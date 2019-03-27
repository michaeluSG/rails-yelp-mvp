class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], message: "%{value} is not within the range" }
  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true }
end
