$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'rubygems'
require 'sinatra'
require 'rspec'
require 'rack/test'

require  'datamapper_example'

#testing in memory
DataMapper.setup(:default, 'sqlite::memory:')

Rspec.configure do |conf|
   conf.before(:each) { DataMapper.auto_migrate! }
end
