class Vehicle < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews

    validates :plate_number, presence: true
    validates :plate_state, presence: true
    validates :vehicle_type, presence: true
    validates :bug_type, presence: true
    validates :status, presence: true
    validates :company_name, presence: true
    validates :pick_up_date, presence: true

    self.infested
    where(status: true)
    end

    self.clean
    where(status: false)
    end
    
end
