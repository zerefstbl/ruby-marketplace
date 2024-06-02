# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.0.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.3', '>= 7.1.3.3'

gem 'rswag-api'
gem 'rswag-ui'

gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]
gem 'devise', '~> 4.9', '>= 4.9.4'
gem 'bootsnap', require: false

gem 'rack-cors'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  gem 'ffaker', '~> 2.21'
  gem 'rspec-rails', '~> 6.1', '>= 6.1.2'
  gem 'rswag-specs', '~> 2.13'
  gem 'rubocop', '~> 1.64', '>= 1.64.1', require: false
end

group :test do
  gem 'simplecov', '~> 0.22.0', require: false
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
