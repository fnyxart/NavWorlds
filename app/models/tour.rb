class Tour < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
end
