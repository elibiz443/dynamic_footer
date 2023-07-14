module DynamicFooter
  module Helpers
    module ApplicationHelper
      def footer_info(footer_element = {})
        DynamicFooter::FooterInfo.info(footer_element)
      end

      def footer_statement(name = nil, footer_element = {})
        footer_info = footer_info(footer_element)
        footer_info[:name] = name || footer_info[:name]
        DynamicFooter::FooterInfo.format_footer(footer_info)
      end
    end
  end
end
