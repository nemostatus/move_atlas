class Review < ApplicationRecord
    belongs_to :vehicle
    belongs_to :user, optional: true
  
  
 
end
