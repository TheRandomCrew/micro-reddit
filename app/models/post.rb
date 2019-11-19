# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, length: { in: 6..50 }
  validates :user_id, :body, :title, :image, presence: true
end
