class VehiclesController < ApplicationController
    def index
        @vehicles = Vehicle.all 
    end
    
    def new
        @vehicle = Vehicle.new
        @vehicle.reviews.build(params[:reviews_attributes])
       
    end
     
    def create
       @vehicle = Vehicle.new(vehicle_params)
      if @vehicle.save
       redirect_to vehicles_path(@vehicle)
       else
         render :new
        end 
      end
        def show
            @vehicle = Vehicle.find(params[:id])
            @review = @vehicle.reviews.build
          
            render :show
        end 
    
        def edit
        
          @vehicle = Vehicle.find(params[:id])
          @reviews = @vehicle.reviews 
          render :edit
        end
        
          def update
            @vehicle = Vehicle.find(params[:id])
            if @vehicle.update(vehicle_params)
             
              redirect_to user_path(current_user)
            else
              render :edit
            end
       
        end

   

    def destroy
        @review = Review.find(params[:id]) 
        @vehicle = Vehicle.find(params[:id])
        @vehicle.destroy
        @review.destroy

        redirect_to user_path(current_user)  #deleted together to avoid an error, fixed it one way however i do want to
        #can delete both vehicle and its review when i delete vehicle, now i want the option to delete the review but not
        #the vehicle. How? Is this considered conventional?
  
  end

    

    private
    def vehicle_params
        params.require(:vehicle).permit(:plate_number, 
        :plate_state, :vehicle_type, :pick_up_date, :company_name, :status, :bug_type, 
        reviews_attributes: [:customer_experience_rating, :user_id])
   
    end 
end
