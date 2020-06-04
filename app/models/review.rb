class Review < ApplicationRecord
    belongs_to :vehicle
    belongs_to :user
    validates :bug_type, presence: true
    validates :customer_service_response_rating, presence: true
end
