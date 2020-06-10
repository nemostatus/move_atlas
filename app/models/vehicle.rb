class Vehicle < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews
    accepts_nested_attributes_for :reviews


    def reviews_attributes=(reviews_attributes)
      reviews_attributes.values.each do |reviews_attributes|
       self.reviews << Review.where(reviews_attributes).first_or_initialize     
      end
    end
  
    


      

    validates :plate_number, presence: true
    validates :plate_state, presence: true
    validates :vehicle_type, presence: true
    validates :bug_type, presence: true
    validates :company_name, presence: true
    validates :pick_up_date, presence: true

    
  
    def self.clean_vehicle(status) #how to make data unique to user, vehicle doesnt have user_id foreign key. can i get that
      #lets see... what data can i put in controller to assist 

      where(status: false)
    end

    def self.infested_vehicle(status)
      where(status: true)
    end

    def self.plate(plate_number)
      where(plate_number: plate_number)
    end 

end
