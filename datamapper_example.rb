require 'dm-core'
require 'dm-timestamps'
require 'dm-constraints'
require 'dm-migrations'
require 'haml'

require File.join(File.dirname(__FILE__), 'lib/post')

class DataMapperExample < Sinatra::Base

  get '/' do
    "Not much to see here right now!"
  end

  get '/post/new' do

  end

end
