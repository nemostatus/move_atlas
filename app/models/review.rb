class Review < ApplicationRecord
    belongs_to :vehicle
    belongs_to :user, optional: true
    validates :customer_experience_rating, presence_of: true
  
  
 
end
