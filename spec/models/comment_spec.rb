require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Create one' do
    it do
      comment1 = Comment.new(user_id: 1, post_id: 1, comment: "Hello world")
      expect( comment1.comment ).to eq( "Hello world" )
    end
  end
end
