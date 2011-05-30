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
      haml :new_post
  end

  get '/posts' do
    @posts = Post.all
    haml :posts
  end

  post '/post/add' do
    post = Post.create(title: params[:title], body: params[:body])
    redirect "/posts"
  end

  get '/application.css' do
    sass :style
  end
end
