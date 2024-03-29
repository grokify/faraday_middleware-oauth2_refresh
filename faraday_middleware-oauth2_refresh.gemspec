Gem::Specification.new do |s|
  s.name        = 'faraday_middleware-oauth2_refresh'
  s.version     = '0.1.3'
  s.date        = '2023-02-14'
  s.summary     = 'Faraday OAuth2 request middleware with token refresh'
  s.description = 'This Faraday middleware gem adds OAuth2 token handling with token refresh'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/faraday_middleware-oauth2_refresh'
  s.licenses    = ['MIT']
  s.files       = [
    'CHANGELOG.md',
    'CODE_OF_CONDUCT.md',
    'LICENSE.txt',
    'README.md',
    'Rakefile',
    'VERSION.txt',
    'lib/faraday_middleware-oauth2_refresh.rb',
    'lib/faraday_middleware/oauth2_refresh.rb',
    'test/test_setup.rb'
  ]
  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'faraday', '~> 1.10', '>= 1.10.3'
  s.add_dependency 'faraday_middleware', '~> 1.2', '>= 1.2.0'

  s.add_development_dependency 'coveralls', '~> 0'
  s.add_development_dependency 'rake', '~> 13', '>= 13.0.6'
  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'test-unit', '~> 3'
end
