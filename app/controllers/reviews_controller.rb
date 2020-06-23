class ReviewsController < ApplicationController
  before_action :find_vehicle, only: [:new,:index,:create,:edit]
  before_action :find_review, only: [:show,:edit, :update, :destroy]

     def index
 
     @reviews = @vehicle.reviews
     # render :index
     end 

     def highest_rated
      @highest_rated = Review.highest_rated

   
     end
    
     
     def new
      
      @review = Review.new

      render :new
     end 

     def create
      @review = @vehicle.reviews.build(review_params)
      @review.user = current_user
     
      if @review.save
        redirect_to vehicle_path(@vehicle)
      else 
        render :new
      end
     end

     #def show
     #@vehicle = @review.vehicle 
      #render :show
     #end

    
      def edit
        
        #@vehicle= Vehicle.find(params[:vehicle_id])
        #@review = Review.find(params[:id])
        @vehicle = @review.vehicle 
       end
        
          def update
            #@vehicle= Vehicle.find(params[:vehicle_id])
            #@review = Review.find(params[:id])
            @vehicle = @review.vehicle 
          if @review.update(review_params)
              redirect_to user_path(current_user)
            else
              render :edit
            end
            end

  def destroy
    @review = current_user.reviews.find(params[:id])
      if @review.destroy
      redirect_to user_path(current_user)
      else
        render :show
  end
end

def find_vehicle
  @vehicle = Vehicle.find(params[:vehicle_id])
end

def find_review 
  @review = Review.find(params[:id])
end
  private
  def review_params
  params.require(:review).permit( :customer_experience_rating, :user_id, :vehicle_id, :customer_service_rating, :_destroy)
  end



end

