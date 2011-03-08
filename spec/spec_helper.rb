require 'rubygems'
require 'sinatra'
require 'rspec'
require 'rack/test'
require 'dm-core'
require 'dm-migrations'
require 'dm-timestamps'

require File.join(File.dirname(__FILE__), '../lib/post')

#testing in memory
DataMapper.setup(:default, 'sqlite::memory:')

Rspec.configure do |conf|
   conf.before(:each) { DataMapper.auto_migrate! }
end
