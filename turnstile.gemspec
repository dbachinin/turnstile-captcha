# frozen_string_literal: true

require_relative 'lib/turnstile/version'

Gem::Specification.new do |spec|
  spec.name          = "turnstile-captcha"
  spec.version       = Turnstile::VERSION
  spec.authors       = ["Mattias Pfeiffer"]
  spec.email         = ["mattias@pfeiffer.dk"]

  spec.summary       = %q{Use Turnstile by Cloudflare to perform captcha validation in your Rails app}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/pfeiffer/turnstile-captcha"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/pfeiffer/turnstile-captcha/"
  spec.metadata["changelog_uri"] = "https://github.com/pfeiffer/turnstile-captcha/blog/main/CHANGELOG.md"

  spec.files = `git ls-files -z -- {CHANGELOG.md,LICENSE,README.md,lib}`.split("\x0")
  spec.require_path = "lib"

  # Tests
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "faraday"
  spec.add_dependency "rails", ">= 5.2.6"
  spec.add_dependency "hashie"
end
