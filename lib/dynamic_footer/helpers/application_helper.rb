module DynamicFooter
  module Helpers
    module ApplicationHelper
      def footer_info
        DynamicFooter::FooterInfo.info
      end
    end
  end
end
