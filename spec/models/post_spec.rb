require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Create one' do
    it do
      post1 = Post.new(user_id: 1, title: "My first post!", body: "Hello world!", image: "someurl")
      expect( post1.body ).to eq( "Hello world!" )
    end
  end
end
