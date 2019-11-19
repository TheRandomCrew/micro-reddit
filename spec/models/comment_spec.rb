require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Create one' do
    it do
      comment1 = Comment.new(user_id: 1, post_id: 1, comment: "Hello world")
      expect( comment1.comment ).to eq( "Hello world" )
    end

     it 'should belong to user' do
      user = Comment.reflect_on_association(:user)
      expect(user.macro).to eq(:belongs_to)
    end

     it 'should belong to post' do
      post = Comment.reflect_on_association(:post)
      expect(post.macro).to eq(:belongs_to)
    end
  end
end
