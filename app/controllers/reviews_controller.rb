class ReviewsController < ApplicationController
    def index
        @vehicle= Vehicle.find(params[:vehicle_id])
        @reviews = @vehicle.reviews
    end 

    def new
        @review = Review.new
    end

    def create
        @review = Review.new
        if @review.save
         redirect_to reviews_path(@review)
         else
           render :new
          end 
        end

        def edit
        
            @review = Review.find(params[:id])
         
  
            render :edit
          end
          
            def update
              @review = Review.find(params[:id])
              
               if @review.update 
               
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
        @review = current_user.reviews.find(params[:id])
        @review.destroy
        redirect_to user_path(current_user)
    end
end
