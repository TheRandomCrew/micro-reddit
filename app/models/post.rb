class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, length: { in: 6..50 }, uniqueness: true
  validates :body, :title, :image, presence: true
end
