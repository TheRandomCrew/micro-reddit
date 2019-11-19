# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :comment, length: { minimum: 2 }
  validates :user_id, :post_id, :comment, presence: true
end
