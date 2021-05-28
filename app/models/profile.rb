class Profile < ApplicationRecord
  belongs_to :user

  validates :hobby,         presence: true
  validates :favorite,      presence: true
  validates :comment,       presence: true

end
