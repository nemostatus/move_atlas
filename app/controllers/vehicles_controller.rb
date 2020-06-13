class VehiclesController < ApplicationController
  def index

    @clean_vehicles = current_user.vehicles.where(status:false)
    @infested_vehicles = current_user.vehicles.where(status:true)
   render :index
   end

   def all

    @clean_vehicles = Vehicle.clean_vehicle(status:false)
    @infested_vehicles = Vehicle.infested_vehicle(status:true)
    render :all 
   end 
    
    def new
        @vehicle = Vehicle.new
        
       render :new
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
           
          
            render :show
        end 
    
        def edit
        
          @vehicle = Vehicle.find(params[:id])
          
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
    
        @vehicle = Vehicle.find(params[:id])
         if @vehicle.destroy
            redirect_to user_path(current_user)
            else
              render :show
        end
      end



    

    private
    def vehicle_params
      params.require(:vehicle).permit(:plate_number, :plate_state, :vehicle_type, :pick_up_date, :company_name, :status, :bug_type, 
      reviews_attributes: [:id,:customer_experience_rating,:user_id,:_destroy])
    end
end
