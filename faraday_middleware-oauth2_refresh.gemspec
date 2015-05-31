Gem::Specification.new do |s|
  s.name        = 'faraday_middleware-oauth2_refresh'
  s.version     = '0.0.2'
  s.date        = '2015-05-31'
  s.summary     = 'Faraday OAuth2 request middleware with token refresh'
  s.description = 'This Faraday middleware gem adds OAuth2 token handling with token refresh'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/'
  s.files       = [
    'CHANGELOG.md',
    'LICENSE.txt',
    'README.md',
    'Rakefile',
    'VERSION.txt',
    'lib/faraday_middleware-oauth2_refresh.rb',
    'lib/faraday_middleware/oauth2_refresh.rb',
    'test/test_setup.rb'
  ]
  s.add_dependency 'faraday', '~> 0.9', '>= 0.9'
  s.add_dependency 'faraday_middleware', '~> 0', '>= 0'
end