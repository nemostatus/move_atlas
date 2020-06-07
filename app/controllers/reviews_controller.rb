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

    def show
        @review = Review.find(params[:id])
        @vehicle = @review.vehicle 
        render :show 
    end 
    def destroy
        @review = current_user.reviews.find(params[:id])
        @review.destroy
        redirect_to user_path(current_user)
    end
end
