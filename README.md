# defra-styles

This repository is used to manage the code style we use at DEFRA.

## Installation

Add the following to your Gemfile:

```ruby
group :test, :development do
  gem 'defra-style'
end
```

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
