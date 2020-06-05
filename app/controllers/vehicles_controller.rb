class VehiclesController < ApplicationController
    def new
        @vehicle = Vehicle.new
    end
     
    def create
        @vehicle = Vehicle.new(vehicle_params)
        if @vehicle.save
            redirect_to @vehicle
        else
            render :new
        end 
    end

    private
    def vehicle_params
        params.require(:vehicle).permit(:plate_number, 
        :plate_state, :vehicle_type, :pick_up_date, :company_name, :status, :bug_type)
   
    end 
end
