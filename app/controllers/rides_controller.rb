class RidesController < ApplicationController

  def index
    @rides = Rides.all
  end

  def new
    @status = Rides.status
  end

  def create
    @ride = Rides.new(ride_params)

    @ride.save
    redirect_to @ride
  end

  def show
    @ride = Rides.find(params[:id])
  end

  private
    def ride_params
      params.required(:ride).permit(:name, :status, :origin, :contact_info)
    end
end
