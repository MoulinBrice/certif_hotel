class Room < ApplicationRecord
  belongs_to :hotel
  validates :capacity, presence: true
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }
  validates :price_per_night, presence: true
  validates :capacity, numericality: { greater_than: 0 }
  has_many :bookings, dependent: :destroy
end
