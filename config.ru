$LOAD_PATH.unshift(File.join(File.dirname(__FILE__)))
require 'rubygems'
require 'sinatra/base'
require 'datamapper_example'

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite3://a_datamapper_example.db')

DataMapper.auto_migrate! 

run DataMapperExample
