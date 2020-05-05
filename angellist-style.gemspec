# frozen_string_literal: true

require_relative 'lib/angellist/style/version'

Gem::Specification.new do |spec|
  spec.name          = "angellist-style"
  spec.version       = AngelList::Style::VERSION
  spec.authors       = ["Konstantin Gredeskoul", "AngelList Developers"]
  spec.email         = ["kigster@gmail.com", "dev@angel.co"]

  spec.summary       = 'Contains rubocop style decisions to be used across all Ruby projects.'
  spec.description   = 'Contains rubocop style decisions to be used across all Ruby projects.'
  spec.homepage      = "https://github.com/venturehacks/angellist-style"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/venturehacks/angellist-style/tree/master/CHANGELOG.adoc"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport', '5.1.7'
  spec.add_dependency 'rubocop'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-rspec'
  spec.add_dependency 'rubocop-thread_safety'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
