module DynamicFooter
  module FooterInfo
    def self.info
      {
        name: Rails.application.class.module_parent_name,
        copyright: '©',
        year: Time.now.year,
        rights: 'All rights reserved'
      }
    end
  end
end
