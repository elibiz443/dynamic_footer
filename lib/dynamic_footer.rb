# frozen_string_literal: true

require_relative "dynamic_footer/version"
require_relative "dynamic_footer/footer_info"
require_relative "dynamic_footer/helpers/application_helper"

module DynamicFooter
  class Error < StandardError; end
  # Your code goes here...
end

ActionView::Base.include DynamicFooter::Helpers::ApplicationHelper
