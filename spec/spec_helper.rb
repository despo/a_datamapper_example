require 'rubygems'
require 'rspec'
require 'rack/test'
require 'dm-core'
require 'dm-migrations'
require 'dm-timestamps'

DataMapper.setup(:default, 'sqlite3://test.db')

Rspec.configure do |conf|
  conf.include Rack::Test::Methods
end
