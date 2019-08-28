Gem::Specification.new do |s|
  s.name        = 'faraday_middleware-oauth2_refresh'
  s.version     = '0.0.3'
  s.date        = '2016-08-23'
  s.summary     = 'Faraday OAuth2 request middleware with token refresh'
  s.description = 'This Faraday middleware gem adds OAuth2 token handling with token refresh'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/faraday_middleware-oauth2_refresh'
  s.licenses    = ['MIT']
  s.files       = [
    'CHANGELOG.md',
    'LICENSE.md',
    'README.md',
    'Rakefile',
    'VERSION.txt',
    'lib/faraday_middleware-oauth2_refresh.rb',
    'lib/faraday_middleware/oauth2_refresh.rb',
    'test/test_setup.rb'
  ]
  s.add_dependency 'faraday', '~> 0.9', '>= 0.9'
  s.add_dependency 'faraday_middleware', '~> 0', '>= 0'

  s.add_development_dependency 'coveralls', '~> 0'
  s.add_development_dependency 'rake', '~> 11'
  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'test-unit', '~> 3'
end
