class Album < ApplicationRecord
  # Association
  has_many :images, dependent: :destroy
  belongs_to :user

  # Nested Association
  accepts_nested_attributes_for :images, allow_destroy: true

  # Validation
  validates :name, presence: true
end
