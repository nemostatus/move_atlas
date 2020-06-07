class Vehicle < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews
    accepts_nested_attributes_for :reviews

    def reviews_attributes=(reviews_attributes)
        reviews_attributes.values.each do |reviews_attributes|
          self.reviews.build(reviews_attributes)
        end
      end

    validates :plate_number, presence: true
    validates :plate_state, presence: true
    validates :vehicle_type, presence: true
    validates :bug_type, presence: true
    validates :company_name, presence: true
    validates :pick_up_date, presence: true

     
    
end
