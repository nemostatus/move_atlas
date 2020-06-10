class Review < ApplicationRecord
    belongs_to :vehicle
    belongs_to :user
  validates :customer_experience_rating, presence: true
  
 
end
