module DynamicFooter
  module Helpers
    module ApplicationHelper
      include DynamicFooter::FooterInfo

      def footer_info
        DynamicFooter::FooterInfo.info
      end
    end
  end
end
