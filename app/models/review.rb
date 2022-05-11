class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5, message: 'Must be 0-5' }
  validates :rating, numericality: { only_integer: true, message: 'Must be a number' }
end
