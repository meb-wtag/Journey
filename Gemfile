source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.7"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "dotenv-rails"
gem 'simple_form'
gem "factory_bot", "~> 6.2"
gem 'cancancan'
gem 'attach', '~> 2.0'

group :development, :test do
  gem 'rspec-rails', '~> 6.0.0'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem 'prettier_print'
