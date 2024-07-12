# app/models/post.rb
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

  validates :title, :author, :content, :status, :published_date, presence: true
end
