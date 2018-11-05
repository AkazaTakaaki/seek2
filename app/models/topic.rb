class Topic < ApplicationRecord
  validates :description, presence: true

  belongs_to :user

  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
end
