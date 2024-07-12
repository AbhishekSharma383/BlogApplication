# app/models/comment.rb
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, presence: true
end
