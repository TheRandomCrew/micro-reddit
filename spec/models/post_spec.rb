require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Create one' do
    it do
      post1 = Post.new(user_id: 1, title: "My first post!", body: "Hello world!", image: "someurl")
      expect( post1.body ).to eq( "Hello world!" )
    end


    it 'should belong to user' do
      user = Post.reflect_on_association(:user)
      expect(user.macro).to eq(:belongs_to)
    end


    it 'should have many comments' do
      comms = Post.reflect_on_association(:comments)
      expect(comms.macro).to eq(:has_many)
    end
  end
end
