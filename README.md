<img src="/defra-ruby-style.png" alt="Defra ruby style logo" />

[![Build Status](https://travis-ci.com/DEFRA/defra-ruby-style.svg?branch=master)](https://travis-ci.com/DEFRA/defra-ruby-style)
[![Gem Version](https://badge.fury.io/rb/defra_ruby_style.svg)](https://badge.fury.io/rb/defra_ruby_style)

This repository is used to manage the ruby code style we use at DEFRA.

## Installation

Add the following to your `Gemfile`

```ruby
group :test, :development do
  gem "defra_ruby_style"
end
```

And then update your dependencies by calling

```bash
bundle install
```

## Usage

If your project hasn't got one, create the file `.rubocop.yml` in its root and add the following:

```ruby
inherit_gem:
  defra_ruby_style:
    - default.yml
```

If it has just replace the existing content with this. Now you can run `rubocop` as usual.

```bash
bundle exec rubocop
```

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3

The following attribution statement MUST be cited in your products and applications when using this information.

> Contains public sector information licensed under the Open Government license v3

### About the license

The Open Government Licence (OGL) was developed by the Controller of Her Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.
