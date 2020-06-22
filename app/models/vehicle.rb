class Vehicle < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
  accepts_nested_attributes_for :reviews, allow_destroy: true
  validates :plate_number, :plate_state, :vehicle_type, :bug_type, :company_name, presence: true
  validates :plate_number, length: {minimum: 4}
  validates :plate_number, length: {maximum: 4}
 validates :pick_up_date, format: { with: /^\d{4}-\d{2}-\d{2}$/, multiline: true }



  def reviews_attributes=(reviews_attributes)
    reviews_attributes.values.each do |reviews_attributes|
      #self.reviews << Review.where(reviews_attributes)
      self.reviews.build(reviews_attributes)
    end
  end
 
 
    

    def self.clean_vehicle(status) #how to make data unique to user, vehicle doesnt have user_id foreign key. can i get that
      #lets see... what data can i put in controller to assist 

      where(status: false)
    end

    def self.infested_vehicle(status)
     where(status: true)
    end
  end
