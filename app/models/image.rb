class Image < ApplicationRecord
  # Mount uploader
  mount_uploader :photo, ImageUploader

  # Association
  belongs_to :album

  # Validation
  # validates :photo, presence: true
end
