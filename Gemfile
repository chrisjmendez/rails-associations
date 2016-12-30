source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# #### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ###
# COPY GEM'S BELOW
# #### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ###

# ###
# Authentication
# ###
# You may need to request from the source for Rails 5
gem 'devise', git: 'https://github.com/plataformatec/devise.git'  

# ###
# Configuration
# ###
# Server Watcher
gem 'rerun', :groups => [:development, :test]


# ###
# Testing
# ###

# Rspec https://github.com/rspec/rspec
gem 'spring-commands-rspec', :groups => [:development, :test]  
gem 'rspec-rails', :groups => [:development, :test]
# Shoulda https://github.com/thoughtbot/shoulda-matchers
gem 'shoulda-matchers', '~> 3.1', :groups => [:test]
gem 'rails-controller-testing', :groups => [:test]
# Factory Girl 
gem 'factory_girl_rails', :groups => [:development, :test]  
# Capybara
gem 'capybara', :groups => [:test]  


# ###
# Seed
# ###

# Populate fake test data
gem 'populator', :groups => [:development, :test]
# Populate fake test data
gem 'faker', :groups => [:development, :test]
# You need this to turn a password into a hash
gem 'bcrypt'


# ###
# Utilities
# ###

gem 'simple_form'

# ###
# App Specific
# ###

gem 'ruby-duration', '~> 3.2.1'
gem 'timecode', '~> 2.1'
