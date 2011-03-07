require 'rubygems'
require 'sinatra/base'
require 'dm-core'
require 'dm-timestamps'
require 'dm-constraints'
require 'dm-migrations'
require 'haml'

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite3://a_datamapper_example.db')

require File.join(File.dirname(__FILE__), 'lib/post')
require File.join(File.dirname(__FILE__),  'datamapper_example')

DataMapper.auto_migrate! 

run DataMapperExample
