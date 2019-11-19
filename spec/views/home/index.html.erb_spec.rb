require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  context 'when the home is requested' do
    it 'displays the html' do
      render
      expect(rendered).to eq("<h1>Home#index</h1>\n<p>Find me in app/views/home/index.html.erb</p>\n")
    end
  end
end
