class Payment < ApplicationRecord
  attr_accessor :token
  validates :token, presence: true
  validates :price,presence: true
end
