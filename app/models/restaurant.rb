class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not a category... yet" }
  validates :name, :address, presence: true
  has_many :reviews, :dependent => :destroy
end
