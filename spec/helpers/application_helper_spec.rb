# spec/helpers/application_helper_spec.rb

require 'spec_helper'
require_relative '../../lib/dynamic_footer/helpers/application_helper'

RSpec.describe DynamicFooter::Helpers::ApplicationHelper do
  include DynamicFooter::Helpers::ApplicationHelper

  describe '#footer_statement' do
    it 'returns the formatted footer statement with custom name' do
      name = 'Custom App Name'
      footer_element = { separator: '-', rights: 'All Rights Reserved' }

      expected_statement = "©\n      #{Time.now.year}\n      #{name}\n      -\n      All Rights Reserved"

      expect(footer_statement(name, footer_element)).to eq(expected_statement)
    end

    it 'returns the formatted footer statement with default name' do
      footer_element = { separator: '-', rights: 'All Rights Reserved' }

      expected_statement = "©\n      #{Time.now.year}\n      \n      -\n      All Rights Reserved"

      expect(footer_statement(nil, footer_element)).to eq(expected_statement)
    end
  end
end
