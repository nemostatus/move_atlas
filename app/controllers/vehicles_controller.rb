class VehiclesController < ApplicationController
    
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
       
    end 

    private
    def vehicle_params
        params.require(:vehicle).permit(:plate_number, 
        :plate_state, :vehicle_type, :pick_up_date, :company_name, :status, :bug_type, 
        reviews_attributes: [:customer_experience_rating, :user_id])
   
    end 
end
