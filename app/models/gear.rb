class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :photo

  validates :price, :photo, presence: true
end
