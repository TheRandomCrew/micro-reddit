class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: { in: 6..50 }, uniqueness: true
  validates :body, :title, :image, presence: true
end
