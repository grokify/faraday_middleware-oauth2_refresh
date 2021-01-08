# FaradayMiddleware::OAuth2Refresh

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/88aedf52809d460891546fc7e11bd2c6)](https://www.codacy.com/app/grokify/faraday_middleware-oauth2_refresh?utm_source=github.com&utm_medium=referral&utm_content=grokify/faraday_middleware-oauth2_refresh&utm_campaign=badger)

[![Gem Version][gem-version-svg]][gem-version-link]
[![Build Status][build-status-svg]][build-status-link]
[![Coverage Status][coverage-status-svg]][coverage-status-link]
[![Codacy Badge][codacy-svg]][codacy-link]
[![Code Climate][codeclimate-status-svg]][codeclimate-status-link]
[![Scrutinizer Code Quality][scrutinizer-status-svg]][scrutinizer-status-link]
[![Referenes][references-svg]][references-link]
[![Downloads][downloads-svg]][downloads-link]
[![Docs][docs-rubydoc-svg]][docs-rubydoc-link]
[![License][license-svg]][license-link]

Faraday middleware to manage OAuth token authorization with token refresh.

## Description

This gem is a piece of Faraday middleware that adds OAuth token handling using the [oauth2 gem](https://github.com/intridea/oauth2).

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

FaradayMiddleware::OAuth2Refresh is available under an MIT-style license. See {file:LICENSE.md} for details.

FaradayMiddleware::OAuth2Refresh &copy; 2015-2019 by John Wang

 [gem-version-svg]: https://badge.fury.io/rb/faraday_middleware-oauth2_refresh.svg
 [gem-version-link]: http://badge.fury.io/rb/faraday_middleware-oauth2_refresh
 [downloads-svg]: http://ruby-gem-downloads-badge.herokuapp.com/faraday_middleware-oauth2_refresh
 [downloads-link]: https://rubygems.org/gems/faraday_middleware-oauth2_refresh
 [build-status-svg]: https://api.travis-ci.org/grokify/faraday_middleware-oauth2_refresh.svg?branch=master
 [build-status-link]: https://travis-ci.org/grokify/faraday_middleware-oauth2_refresh
 [coverage-status-svg]: https://coveralls.io/repos/grokify/faraday_middleware-oauth2_refresh/badge.svg?branch=master
 [coverage-status-link]: https://coveralls.io/r/grokify/faraday_middleware-oauth2_refresh?branch=master
 [dependency-status-svg]: https://gemnasium.com/grokify/faraday_middleware-oauth2_refresh.svg
 [dependency-status-link]: https://gemnasium.com/grokify/faraday_middleware-oauth2_refresh
 [codacy-svg]: https://api.codacy.com/project/badge/Grade/88aedf52809d460891546fc7e11bd2c6
 [codacy-link]: https://www.codacy.com/app/grokify/faraday_middleware-oauth2_refresh
 [codeclimate-status-svg]: https://codeclimate.com/github/grokify/faraday_middleware-oauth2_refresh/badges/gpa.svg
 [codeclimate-status-link]: https://codeclimate.com/github/grokify/faraday_middleware-oauth2_refresh
 [scrutinizer-status-svg]: https://scrutinizer-ci.com/g/grokify/faraday_middleware-oauth2_refresh/badges/quality-score.png?b=master
 [scrutinizer-status-link]: https://scrutinizer-ci.com/g/grokify/faraday_middleware-oauth2_refresh/?branch=master
 [references-svg]: https://www.versioneye.com/ruby/faraday_middleware-oauth2_refresh/reference_badge.svg
 [references-link]: https://www.versioneye.com/ruby/faraday_middleware-oauth2_refresh/
 [docs-rubydoc-svg]: https://img.shields.io/badge/docs-rubydoc-blue.svg
 [docs-rubydoc-link]: http://www.rubydoc.info/gems/faraday_middleware-oauth2_refresh/
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-link]: https://github.com/grokify/faraday_middleware-oauth2_refresh/blob/master/LICENSE.txt
