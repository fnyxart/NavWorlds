class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  validates :dates, presence: true
end
