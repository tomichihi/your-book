class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :intros
  has_many :likes
  has_one  :profile
  has_one  :payment
  has_many :user_rooms
  has_many :rooms, through: :user_rooms  
  has_many :messages
  with_options presence: true do
    validates :name, length: { maximum: 8 }
    validates :password
    validates :password_confirmation
  end
    validates :password, :password_confirmation, length: { minimum: 6 }, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/ }

  def liked_by?(intro_id)
    likes.where(intro_id: intro_id).exists?
  end
end
