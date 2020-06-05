class ReviewsController < ApplicationController
    def index
        @vehicle= Vehicle.find(params[:vehicle_id])
        @reviews = @vehicle.reviews
    end 

    def new
        @review = Review.new
    end

    def create
        
    end
end
