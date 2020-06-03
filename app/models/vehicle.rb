class Vehicle < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews

    validates :plate_number, presence: true
    validates :plate_state, presence: true
    validates :vehicle_type, presence: true
    validates :rent_date, presence: true
    
end
