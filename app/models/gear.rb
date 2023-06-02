class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_one_attached :photo

  validates :price, :photo, :short_description, :name, :description, presence: true
  validates :price, numericality: { only_integer: true }

  include PgSearch::Model
  pg_search_scope :search_by_name_categ_desc,
                  against: [ :name, :category, :description, :short_description ],
                  using: { tsearch: { prefix: true } }
end
