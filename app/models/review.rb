class Review < ApplicationRecord
  belongs_to :booking
  # belongs_to :user, through: :booking

  validates :content, length: { minimum: 20 }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 6 }
end
