class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Association
  has_many :albums, dependent: :destroy

  # Validation
  validates :name, presence: true

  # Instance Methods
  def is_associated_album?(album_user_id)
    self.id == album_user_id
  end
end
