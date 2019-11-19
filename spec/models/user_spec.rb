require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Create one' do
    it do
      user1 = User.new(username: "Israel Laguan", email: "israellaguan@gmail.com", password: "secretpassword")
      expect( user1.username ).to eq( "Israel Laguan" )
    end
  end
end
