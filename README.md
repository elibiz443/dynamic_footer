# DynamicFooter

This lightweight gem allows you to effortlessly add the current year to your footer. Though that can just be handled by ```Time.now.year``` it's always cool to be able to do something extra effortlessly and that's where this gem comes in. It empowers you to customize your app name, or fallback to the default Rails app name, and easily include copyright information and "All Rights Reserved" statements.It may be a small gem, but it's designed to bring simplicity and convenience to your footer. This gem has been inspired by the fact that the JS way of adding the current year to footer is buggy in the rails environment.


## Installation

Add this line to your application's Gemfile:

    gem 'dynamic_footer'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install dynamic_footer

## Usage

To use this gem, simply add the following to your footer:

    <%= footer_statement('My Company INC.') %>

This will produce the following output:
  
      © 2023 My Company INC. - All Rights Reserved.


If you want to use the default Rails app name, simply omit the argument:
  
      <%= footer_statement %>

This will produce the following output:

        © 2023 My App - All Rights Reserved.

You can also add a custom statement to the footer by using the following:
  
      <%= footer_statement('My Company INC.', 'This is a custom statement.') %>

This will produce the following output:
  
          © 2023 My Company INC. - All Rights Reserved. This is a custom statement.

You can also add each part individually as follows:(This results in more lines of code and doesn't support the idea of simplicity that this gem intends to solve. But you can use it if you want to highly customize the footer statement)

```
<%= footer_info[:copyright] %> or <%= footer_info("Your Copyright Custom Statement")[:copyright] %>
<%= footer_info[:year] %> 
<%= footer_info[:name] %> or <%= footer_info("Your Custom Name")[:name] %>
<%= footer_info[:separator] %> or <%= footer_info("Your Custom Separator")[:separator] %>
<%= footer_info[:rights] %> or <%= footer_info("Your Custom Rights")[:rights] %>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elibiz443/dynamic_footer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/elibiz443/dynamic_footer/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DynamicFooter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/dynamic_footer/blob/main/CODE_OF_CONDUCT.md).
