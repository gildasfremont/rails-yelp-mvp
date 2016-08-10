class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: (0..5), message: "Pick a number from 0 to 5" }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
