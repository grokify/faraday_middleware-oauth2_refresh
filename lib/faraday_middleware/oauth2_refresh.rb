require 'base64'
require 'faraday'
require 'forwardable'

module FaradayMiddleware
  class OAuth2Refresh < Faraday::Middleware
    AUTH_HEADER = 'Authorization'.freeze

    attr_reader :oauth2_token

    extend Forwardable

    def call(env)
      if @oauth2_token.expired?
      	@oauth2_token = @oauth2_token.refresh!({:headers => {'Authorization' => 'Basic ' + get_api_key()}})
      end
      
      if @oauth2_token.token.to_s.length>0
        env[:request_headers][AUTH_HEADER] = %(Bearer #{@oauth2_token.token.to_s})
      end

      @app.call env
    end

    def get_api_key()
      api_key = Base64::encode64("#{@oauth2_token.client.id.to_s}:#{@oauth2_token.client.secret.to_s}").gsub(/[\s\t\r\n]/,'')
      return api_key
    end

    def initialize(app=nil, token=nil, options={})
      super(app)
      @oauth2_token = token
    end

  end
end

Faraday::Request.register_middleware :oauth2_refresh => FaradayMiddleware::OAuth2Refresh