class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  has_many :reviews, dependent: :destroy

  validates :dates, presence: true
end
