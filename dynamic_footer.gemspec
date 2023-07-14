# frozen_string_literal: true

require_relative "lib/dynamic_footer/version"

Gem::Specification.new do |spec|
  spec.name = "dynamic_footer"
  spec.version = DynamicFooter::VERSION
  spec.authors = ["Elly Ambet"]
  spec.email = ["ellyambet10@gmail.com"]

  spec.summary = "gem that allows you to add dynamic footer info to your rails app."
  spec.description = "This lightweight gem allows you to effortlessly add the current year to your footer. Though that can just be handled by --Time.now.year-- it's always cool to be able to do something extra effortlessly and that's where this gem comes in. It empowers you to customize your app name, or fallback to the default Rails app name, and easily include copyright information and 'All Rights Reserved' statements.It may be a small gem, but it's designed to bring simplicity and convenience to your footer. This gem has been inspired by the fact that the JS way of adding the current year to footer is buggy in the rails environment."
  spec.homepage = "https://github.com/elibiz443/dynamic_footer"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elibiz443/dynamic_footer"
  spec.metadata["changelog_uri"] = "https://github.com/elibiz443/dynamic_footer/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.4.14"
  spec.add_development_dependency "rails", "~> 7.0.6"

  spec.add_dependency "rails", "~> 7.0.6"
end
