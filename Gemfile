source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Full-stack web application framework. (http://rubyonrails.org)
gem 'rails', '~> 5.1.4'
# Puma is a simple, fast, threaded, and highly concurrent HTTP 1.1 server for Ruby/Rack applications (http://puma.io)
gem 'puma', '~> 3.7'

# A simple, fast Mysql library for Ruby, binding to libmysql (http://github.com/brianmario/mysql2)
gem 'mysql2', '>= 0.3.18', '< 0.5'

# CoffeeScript adapter for the Rails asset pipeline. (https://github.com/rails/coffee-rails)
gem 'coffee-rails', '~> 4.2'
# Create JSON structures via a Builder-style DSL (https://github.com/rails/jbuilder)
gem 'jbuilder', '~> 2.5'
# Sass adapter for the Rails asset pipeline. (https://github.com/rails/sass-rails)
gem 'sass-rails', '~> 5.0'
# Slim templates generator for Rails 3+ (https://github.com/slim-template/slim-rails)
gem 'slim-rails'

# Turbolinks makes navigating your web application faster (https://github.com/turbolinks/turbolinks)
gem 'turbolinks', '~> 5'
# Ruby wrapper for UglifyJS JavaScript compressor (http://github.com/lautis/uglifier)
gem 'uglifier', '>= 1.3.0'
# Use webpack to manage app-like JavaScript modules in Rails (https://github.com/rails/webpacker)
gem 'webpacker'
# Minimal embedded v8 for Ruby (https://github.com/discourse/mini_racer)
gem 'mini_racer', platforms: :ruby

# Use Hashids in your Rails app models. (https://github.com/jcypret/hashid-rails)
gem 'hashid-rails'

# Flexible authentication solution for Rails with Warden (https://github.com/plataformatec/devise)
gem 'devise'
# Translations for the devise gem (http://github.com/tigrish/devise-i18n)
gem 'devise-i18n'

# Simple way to load your configs from yaml (https://github.com/railsware/global)
gem 'global'

# A mountable GraphiQL endpoint for Rails (http://github.com/rmosolgo/graphiql-rails)
gem 'graphiql-rails'
# A GraphQL language and runtime for Ruby (http://github.com/rmosolgo/graphql-ruby)
gem 'graphql'
# A query batching executor for the graphql gem (https://github.com/Shopify/graphql-batch)
gem 'graphql-batch'

group :development, :test do
  # Pretty print Ruby objects with proper indentation and colors (https://github.com/awesome-print/awesome_print)
  gem 'awesome_print'
  # Ruby fast debugger - base + CLI (http://github.com/deivid-rodriguez/byebug)
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Fast debugging with Pry. (https://github.com/deivid-rodriguez/pry-byebug)
  gem 'pry-byebug'
  # Provides YARD and extended documentation support for Pry (https://github.com/pry/pry-doc)
  gem 'pry-doc'
  # Use Pry as your rails console (https://github.com/rweng/pry-rails)
  gem 'pry-rails'
  # Open a pry session on any unhandled exceptions (https://github.com/ConradIrwin/pry-rescue)
  gem 'pry-rescue'
  # Walk the stack in a Pry session (https://github.com/pry/pry-stack_explorer)
  gem 'pry-stack_explorer'

  # Provides "its" method formerly part of rspec-core (https://github.com/rspec/rspec-its)
  gem 'rspec-its'
  # Set of matchers and helpers to allow you test your APIs responses like a pro. (https://github.com/waterlink/rspec-json_expectations)
  gem 'rspec-json_expectations'
  # RSpec for Rails (https://github.com/rspec/rspec-rails)
  gem 'rspec-rails'
  # Force some rules to write self-documenting request spec. (https://github.com/r7kamura/rspec-request_describer)
  gem 'rspec-request_describer'

  # Extracting `assigns` and `assert_template` from ActionDispatch. (https://github.com/rails/rails-controller-testing)
  gem 'rails-controller-testing'
  # Entity-relationship diagram for your Rails models. (https://github.com/voormedia/rails-erd)
  gem 'rails-erd'

  # Strategies for cleaning databases.  Can be used to ensure a clean state for testing. (http://github.com/DatabaseCleaner/database_cleaner)
  gem 'database_cleaner'
  # factory_bot_rails provides integration between factory_bot and rails 3 or newer (http://github.com/thoughtbot/factory_bot_rails)
  gem 'factory_bot_rails'
  # Making tests easy on the fingers and eyes (http://thoughtbot.com/community/)
  gem 'shoulda-matchers'
end

group :development do
  # A debugging tool for your Ruby on Rails applications. (https://github.com/rails/web-console)
  gem 'web-console', '>= 3.3.0'
  # Listen to file modifications (https://github.com/guard/listen)
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Rails application preloader (https://github.com/rails/spring)
  gem 'spring'
  # rspec command for spring (https://github.com/jonleighton/spring-commands-rspec)
  gem 'spring-commands-rspec'
  # Makes spring watch files using the listen gem. (https://github.com/jonleighton/spring-watcher-listen)
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Annotates Rails Models, routes, fixtures, and others based on the database schema. (http://github.com/ctran/annotate_models)
  gem 'annotate'
  # Add comments to your Gemfile with each dependency's description. (https://github.com/ivantsepp/annotate_gem)
  gem 'annotate_gem'

  # Guard keeps an eye on your file modifications (http://guardgem.org)
  gem 'guard'
  # Guard gem for RSpec (https://github.com/guard/guard-rspec)
  gem 'guard-rspec', require: false
  # Guard plugin for RuboCop (https://github.com/yujinakayama/guard-rubocop)
  gem 'guard-rubocop'

  # Automatic Ruby code style checking tool. (https://github.com/bbatsov/rubocop)
  gem 'rubocop', require: false

  # HTML to Slim converter. (https://github.com/slim-template/html2slim)
  gem 'html2slim'
end

group :test do
  # Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites (http://github.com/colszowka/simplecov)
  gem 'simplecov', require: false
end

# Timezone Data for TZInfo (http://tzinfo.github.io)
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
