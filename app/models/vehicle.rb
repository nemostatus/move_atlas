class Vehicle < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews

    validates :plate_number, presence: true
end
