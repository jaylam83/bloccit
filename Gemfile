source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
#installing faker to fake user input
gem 'faker'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#adding bootstrp
gem 'bootstrap-sass'
#add pry rails
gem 'pry-rails', :group => :development
#add devise for user authentication
gem 'devise'
#add figaro to handle sensitive data
gem 'figaro', '1.0'
#add pundit to declare user roles
gem 'pundit'
#install redcarpet to markdown posts
gem 'redcarpet'
#installing carrierwave and mini_magick for images uploads
gem 'carrierwave'
gem 'mini_magick'
#installing fog for image storage
gem 'fog'
#insalling will_paginate to allow multiple pages
gem 'will_paginate', '~> 3.0.5'
#Installing new relic to monitor app performance
gem 'newrelic_rpm'
#Switching Web server to Puma to improve performance
gem 'puma', :group => [:development, :production]



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  #installing rspec for error testing
  gem 'rspec-rails', '~> 3.0'

  #installing Capybara for error testing
  gem 'capybara'

  #Installing Factory Girl for better error testing of users
  gem 'factory_girl_rails', '~> 4.0'


end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
  # Better error debugging
  gem 'binding_of_caller'
  gem 'better_errors'

end


