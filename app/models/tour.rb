class Tour < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true

  include PGSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
