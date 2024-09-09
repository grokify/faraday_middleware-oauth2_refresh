# FaradayMiddleware::OAuth2Refresh

<div align="center">

[![Gem Version][gem-version-svg]][gem-version-url]
[![Build Status][build-status-svg]][build-status-url]
[![Coverage Status][coverage-status-svg]][coverage-status-url]

</div>
<div align="center">

[![Code Climate][codeclimate-status-svg]][codeclimate-status-url]
[![Scrutinizer Code Quality][scrutinizer-status-svg]][scrutinizer-status-url]

</div>
<div align="center">

[![Docs][docs-rubydoc-svg]][docs-rubydoc-url]
[![License][license-svg]][license-url]

</div>

Faraday middleware to manage OAuth token authorization with token refresh.

## Description

This gem is a piece of Faraday middleware that adds OAuth token handling using the [oauth2 gem](https://gitlab.com/oauth-xx/oauth2/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday_middleware-oauth2_refresh'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install faraday_middleware-oauth2_refresh
```

## Usage

```ruby
require 'oauth2'
require 'faraday_middleware/oauth2_refresh'

client = OAuth2::Client.new('my_client_id', 'my_client_secret', site: 'https://example.com' )
token  = client.password.get_token('username', 'password', { headers: { 'Authorization' => 'Basic my_api_key' } })

conn = Faraday.new(url: "http://example.com") do |builder|
  builder.request :oauth2_refresh, token
  builder.adapter Faraday.default_adapter
end

conn.get "/foo" # sends token
```

## Change Log

See [CHANGELOG.md](CHANGELOG.md)

## Links

Project Repo

* https://github.com/grokify/faraday_middleware-oauth2_refresh

## Problems, Comments, Suggestions, Contributions?

Any reports of problems, comments or suggestions are most welcome.

Please report these on [Github](https://github.com/grokify/faraday_middleware-oauth2_refresh)

## License

`FaradayMiddleware::OAuth2Refresh` is available under an MIT-style license. See {file:LICENSE.md} for details.

`FaradayMiddleware::OAuth2Refresh` &copy; 2015-2023 by John Wang

 [gem-version-svg]: https://badge.fury.io/rb/faraday_middleware-oauth2_refresh.svg
 [gem-version-url]: http://badge.fury.io/rb/faraday_middleware-oauth2_refresh
 [downloads-svg]: http://ruby-gem-downloads-badge.herokuapp.com/faraday_middleware-oauth2_refresh
 [downloads-url]: https://rubygems.org/gems/faraday_middleware-oauth2_refresh
 [build-status-svg]: https://github.com/grokify/faraday_middleware-oauth2_refresh/workflows/ruby%20build/badge.svg?branch=master
 [build-status-url]: https://github.com/grokify/faraday_middleware-oauth2_refresh/actions
 [coverage-status-svg]: https://coveralls.io/repos/grokify/faraday_middleware-oauth2_refresh/badge.svg?branch=master
 [coverage-status-url]: https://coveralls.io/r/grokify/faraday_middleware-oauth2_refresh?branch=master
 [dependency-status-svg]: https://gemnasium.com/grokify/faraday_middleware-oauth2_refresh.svg
 [dependency-status-url]: https://gemnasium.com/grokify/faraday_middleware-oauth2_refresh
 [codacy-svg]: https://api.codacy.com/project/badge/Grade/88aedf52809d460891546fc7e11bd2c6
 [codacy-url]: https://app.codacy.com/manual/grokify/faraday_middleware-oauth2_refresh/dashboard
 [codeclimate-status-svg]: https://codeclimate.com/github/grokify/faraday_middleware-oauth2_refresh/badges/gpa.svg
 [codeclimate-status-url]: https://codeclimate.com/github/grokify/faraday_middleware-oauth2_refresh
 [scrutinizer-status-svg]: https://scrutinizer-ci.com/g/grokify/faraday_middleware-oauth2_refresh/badges/quality-score.png?b=master
 [scrutinizer-status-url]: https://scrutinizer-ci.com/g/grokify/faraday_middleware-oauth2_refresh/?branch=master
 [references-svg]: https://www.versioneye.com/ruby/faraday_middleware-oauth2_refresh/reference_badge.svg
 [references-url]: https://www.versioneye.com/ruby/faraday_middleware-oauth2_refresh/
 [docs-rubydoc-svg]: https://img.shields.io/badge/docs-rubydoc-blue.svg
 [docs-rubydoc-url]: http://www.rubydoc.info/gems/faraday_middleware-oauth2_refresh/
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-url]: https://github.com/grokify/faraday_middleware-oauth2_refresh/blob/master/LICENSE.txt
