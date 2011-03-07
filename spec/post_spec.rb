require 'spec_helper'

describe Post do
  context 'can not be created' do

      it 'when there is no title' do
        post = create_post
        post.save.should be_false
      end

      it 'or body set' do
        post = create_post 'some title'
        post.save.should be_false
      end

  end

  context 'can be created' do

    it 'only when a title and body are set' do
      title = 'Papa Smurf'
      body = 'Papa Smurf is a male fictional character from the Smurfs. He is the third oldest of the Smurfs (after Grandpa and Nanny), and their leader. He is 542 years old[1] (while the other Smurfs are approximately 100 years old), but is quite energetic for his age. He can be easily distinguished from the other Smurfs by his red clothes and his bushy white beard (which was brown in his younger days)'
      post = create_post(title, body)
      post.save.should be_true
    end

  end

end

def create_post(title=nil, body=nil)
  post = Post.new
  post.title = title  if title
  post.body = body    if body
  post
end
