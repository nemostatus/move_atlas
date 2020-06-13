class ReviewsController < ApplicationController
  before_action :find_vehicle, only: [:edit, :update]
  before_action :find_review, only: [:edit, :update]

     def index
     render :index
      
     end 
    
      def edit
        
        #@vehicle= Vehicle.find(params[:vehicle_id])
        #@review = Review.find(params[:id])
       end
        
          def update
            #@vehicle= Vehicle.find(params[:vehicle_id])
            #@review = Review.find(params[:id])
          if @review.update(review_params)
              redirect_to user_path(current_user)
            else
              render :edit
            end
            end

  def destroy
    
      if @review.destroy
      redirect_to user_path(current_user)
      else
        render :show
  end
end

  private
  def review_params
  params.require(:review).permit(:customer_experience_rating, :vehicle_id)
  end

  def find_vehicle
    @vehicle= Vehicle.find(params[:vehicle_id])
  end
  
  def find_review 
    @review = Review.find(params[:id])
  end

end

