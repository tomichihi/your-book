class Payment < ApplicationRecord
  attr_accessor :token
  belongs_to :user
  validates :token, presence: true
  validates :price, presence: true
 
end
