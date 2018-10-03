# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem"s version:
require "defra/style/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "defra-style"
  spec.version     = Defra::Style::VERSION.dup
  spec.authors     = ["Digital Services Team, EnvironmentAgency"]
  spec.email       = ["dst@environment-agency.gov.uk"]
  spec.homepage    = "https://github.com/EnvironmentAgency"
  spec.summary     = "DEFRA coding standards"
  spec.description = "DEFRA coding standards"
  spec.license     = "No Licence"

  spec.files       = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.add_dependency "rubocop", "~> 0.58.2"
  spec.add_dependency "rubocop-rspec", "~> 1.29.1"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end