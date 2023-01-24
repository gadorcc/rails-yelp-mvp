class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = (0..5).to_a
  validates :content, presence: true
  validates :rating, inclusion: { in: RATING }, presence: true, numericality: { only_integer: true }

end
