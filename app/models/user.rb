class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Association
  has_many :albums, dependent: :destroy
  has_many :images, dependent: :destroy

  # Validation
  validates :name, presence: true
end
