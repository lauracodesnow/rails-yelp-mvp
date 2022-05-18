class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }, inclusion: (0..5).to_a
  validates :content, presence: true
end
