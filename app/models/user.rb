class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :intros
  has_many :likes
  has_one  :profile

  def liked_by?(intro_id)
    likes.where(intro_id: intro_id).exists?
  end
end
