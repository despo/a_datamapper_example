# Generated by cucumber-sinatra. (2011-02-24 15:44:01 +0000)

ENV['RACK_ENV'] = 'test'

require 'sinatra/base'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'rack/test'

require File.join(File.dirname(__FILE__), '..', '..', 'datamapper_example.rb')

DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.auto_migrate!

Capybara.app = DataMapperExample

class DataMapperExampleWorld
  include Capybara
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  DataMapperExampleWorld.new
end
