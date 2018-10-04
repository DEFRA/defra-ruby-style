# Defra style

This repository is used to manage the ruby code style we use at DEFRA.

## Installation

Add the following to your Gemfile

```ruby
group :test, :development do
  gem "defra-style",
      git: "https://github.com/DEFRA/defra-style",
      branch: "master"
end
```

And then update your dependencies by calling

```bash
bundle install
```

## Usage

Within the project's `.rubocop.yml` file add the following:

```ruby
inherit_gem:
  defra-style:
    - default.yml
```

Now you can run `rubocop` as usual.

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
