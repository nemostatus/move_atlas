class VehiclesController < ApplicationController
  before_action :find_vehicle, except: [:index, :all, :new, :create]

  def index
    @clean_vehicles = current_user.vehicles.where(status: false).order("company_name ASC")
    @infested_vehicles = current_user.vehicles.where(status: true).order("company_name ASC")
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
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:plate_number, :plate_state, :vehicle_type, :pick_up_date, :company_name, :status, :bug_type,
                                    reviews_attributes: [:customer_experience_rating, :vehicle_id, :user_id, :customer_service_rating])
  end

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
