class RidesController < ApplicationController

  def index
    @rides = Rides.all
    @ride = Rides.new
  end

  def new
    @status = Rides.status
  end

  def create
    @ride = Rides.new(ride_params)

    @ride.save
    redirect_to @ride
  end

  def update
    @ride = Rides.find(params[:id])

    @ride.update(ride_params)
    redirect_to @ride
  end

  def edit
    @status = Rides.status
    @ride = Rides.find(params[:id])
  end

  def show
    @ride = Rides.find(params[:id])
  end

  def destroy
    @ride = Rides.find(params[:id])
    @ride.destroy

    redirect_to rides_path
  end

  private
    def ride_params
      params.required(:ride).permit(:name, :status, :origin, :contact_info)
    end
end
