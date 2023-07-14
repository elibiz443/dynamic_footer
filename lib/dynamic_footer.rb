# frozen_string_literal: true

require 'dynamic_footer/version'
require 'dynamic_footer/footer_info'
require 'dynamic_footer/helpers/application_helper'
require 'action_view'
require 'rails' 

module DynamicFooter
  class Error < StandardError; end
end

ActionView::Base.include DynamicFooter::Helpers::ApplicationHelper
