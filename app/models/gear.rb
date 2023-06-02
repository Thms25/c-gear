class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :photo

  validates :price, :photo, presence: true

  pg_search_scope :global_search,
                  against: [ :name, :category, :description ],
                  using: { tsearch: { prefix: true } }
end
