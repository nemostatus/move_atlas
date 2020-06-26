class Review < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  validates :customer_experience_rating, presence: true, :inclusion => 1..10

  validates :customer_service_rating, presence: true, :inclusion => 1..10
end
