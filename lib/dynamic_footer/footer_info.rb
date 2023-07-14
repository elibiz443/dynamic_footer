module DynamicFooter
  module FooterInfo
    def self.info(footer_element = {})
      {
        copyright: footer_element[:copyright] || '©',
        year: Time.now.year,
        name: footer_element[:name] || Rails.application.class.module_parent_name,
        separator: footer_element[:separator] || ' - ',
        rights: footer_element[:rights] || 'All Rights Reserved'
      }
    end

    def self.format_footer(footer_statement = {})
      "#{footer_statement[:copyright]}
      #{footer_statement[:year]}
      #{footer_statement[:name]}
      #{footer_statement[:separator]}
      #{footer_statement[:rights]}"
    end
  end
end
