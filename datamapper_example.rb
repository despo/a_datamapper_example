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
    post = Post.new
    post.title = params[:title]
    post.body = params[:body]
    post.save
    redirect "/posts"
  end

end
