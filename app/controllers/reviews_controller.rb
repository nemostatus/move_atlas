class ReviewsController < ApplicationController
  def index
     render :index
      
  end 

  def new
    @vehicle= Vehicle.find(params[:vehicle_id])
   
      @review = Review.new
  end

  def create
    @vehicle= Vehicle.find(params[:vehicle_id])
      @review = Review.new(review_params)
      @review.vehicle = @vehicle 
      if @review.save
       redirect_to reviews_path(@review)
       else
         render :new
        end 
      end

      def edit
         
        @vehicle= Vehicle.find(params[:vehicle_id])
        
       

          render :edit
        end
        
          def update
            if @review.update(review_params)
             
              redirect_to user_path(current_user)
            else
              render :edit
            end
            end
  def show
      @review = Review.find(params[:id])
      @vehicle = @review.vehicle 
      render :show 
  end 
  def destroy
    @vehicle= Vehicle.find(params[:vehicle_id])
    @review = Review.find(params[:id])
      if @review.destroy
      redirect_to user_path(current_user)
      else
        render :show
  end
end
  private
  def review_params
  params.require[:reviews].permit[:customer_service_rating, :vehicle_id]
end
end

