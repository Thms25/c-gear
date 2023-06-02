class Review < ApplicationRecord
  belongs_to :user
  belongs_to :gear

  validates :rating, :content, presence: true
end
