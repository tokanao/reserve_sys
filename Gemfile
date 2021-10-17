source 'http://rubygems.org'

ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'webpacker'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
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
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]



gem 'dotenv-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
# gem 'jquery-turbolinks'
gem 'bootstrap-sass'
gem 'bootstrap-generators'
gem 'simple_form'
gem 'record_tag_helper', '~> 1.0'
gem 'slim-rails'
gem 'html2slim'
gem 'ridgepole'
gem 'enumerize'
gem 'active_decorator'
gem 'active_decorator_with_decorate_associations'
gem 'cocoon'
gem 'foreman'
gem 'gon'

# Fullcalendar
gem 'fullcalendar-rails'
gem 'momentjs-rails'

gem 'ransack'
gem 'kaminari'
gem 'kaminari-bootstrap', '~> 3.0.1'

gem 'jquery-datatables-rails', '~> 3.4.0'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-footnotes'

  gem 'byebug'
  gem 'capistrano-rails'
  gem 'selenium-webdriver'

  gem 'awesome_print'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'database_rewinder'
  gem 'delorean'
  gem 'rubocop', require: false
  gem 'brakeman'
  gem 'faker'
  gem 'database_cleaner'
  gem 'launchy', '~> 2.4.2'
  gem 'rspec_junit_formatter' #for circleci
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
  gem 'bullet'
  gem 'rspec-json_matcher'
  # gem 'capybara'
  gem 'simplecov'
  gem 'seed_dump'
  gem 'seed-fu', '~> 2.3'
  gem 'rails-erd', require: false
  gem "meta_request"
end 
