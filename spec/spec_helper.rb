# frozen_string_literal: true

require 'bundler/setup'
require 'dynamic_footer' 
require 'action_view'
require 'rails' 

RSpec.configure do |config|
  config.include ActionView::Helpers 

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Load Rails environment if testing within a Rails application
  config.before(:suite) do
    Rails.application.load_tasks if defined?(Rails.application) && Rails.application.respond_to?(:load_tasks)
  end
end
