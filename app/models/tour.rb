class Tour < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :price ],
    associated_against: {
      user: :name
    },
    using: {
      tsearch: { prefix: true }
    }
end
