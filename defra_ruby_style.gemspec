# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem"s version:
require "defra/style/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "defra_ruby_style"
  s.version     = Defra::Style::VERSION.dup
  s.authors     = ["Defra"]
  s.email       = ["alan.cruikshanks@environment-agency.gov.uk"]
  s.license     = "The Open Government Licence (OGL) Version 3"
  s.homepage    = "https://github.com/DEFRA/defra-ruby-style"
  s.summary     = "Defra ruby coding standards"
  s.description = "A gem to simplify the process of ensuring ruby based " \
                  "Defra projects are using our agreed coding style and " \
                  "standards."

  s.files = Dir["{bin,lib}/**/*", "default.yml", "LICENSE", "Rakefile", "README.md"]
  s.require_paths = ["lib"]

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if s.respond_to?(:metadata)
    s.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
          "public gem pushes."
  end

  s.add_dependency "rubocop", ">= 1.0", "< 2.0"
  s.add_dependency "rubocop-factory_bot"
  s.add_dependency "rubocop-rake"
  s.add_dependency "rubocop-rspec"

  # Allows us to automatically generate the change log from the tags, issues,
  # labels and pull requests on GitHub. Added as a dependency so all dev's have
  # access to it to generate a log, and so they are using the same version.
  # New dev's should first create GitHub personal app token and add it to their
  # ~/.bash_profile (or equivalent)
  # https://github.com/skywinder/github-changelog-generator#github-token
  s.metadata["rubygems_mfa_required"] = "true"
  s.required_ruby_version = ">= 3.2"
end
