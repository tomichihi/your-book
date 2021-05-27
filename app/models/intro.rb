class Intro < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :book,       presence: true
  validates :review,     presence: true
  validates :category_id,presence: true, numericality: { other_than: 0 } 
  validates :image,      presence: true
end
