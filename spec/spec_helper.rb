# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] = 'test'
require File.expand_path("../../test/dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'database_cleaner'
require 'shoulda'
require 'factory_girl'
require 'mocha'

require 'support/authlogic_helper'
# include gem specs
# Spud::Core::TestFiles.load_all
# Spud::Cms::TestFiles.load_all
# 
# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')

Dir[File.join(ENGINE_RAILS_ROOT,"spec/support/**/*.rb"), File.join(ENGINE_RAILS_ROOT,"factories/*")].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :mocha
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end

