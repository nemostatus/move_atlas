class Review < ApplicationRecord
    belongs_to :vehicle
    belongs_to :user
    validates :customer_experience_rating, presence: true,:inclusion => 1..10
    
    validates :customer_service_rating, presence: true, :inclusion => 1..10
    scope :highest_rated, -> { where("customer_experience_rating  >= 7").order("customer_experience_rating DESC")}

    
   
  
  

end
