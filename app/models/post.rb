class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, length: { in: 6..50 }
  validates :user_id, :body, :title, :image, presence: true
end
