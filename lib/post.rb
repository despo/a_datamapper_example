class Post
  include DataMapper::Resource

  property :id,     Serial
  property :title,  String, :required => true
  property :body,   Text,   :required => true
end