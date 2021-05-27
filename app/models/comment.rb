class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :intro
  validates :text, presence:true
end
