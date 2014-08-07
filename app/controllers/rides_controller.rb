class RidesController < ApplicationController

  def index
    @riders = Rides.find_all_riders
    @drivers = Rides.find_all_drivers
    @matches = Rides.matches
  end

  def new
    @status = Rides.status
  end

  def create
    @ride = Rides.new(ride_params)
    @status = Rides.status
    if @ride.save
      redirect_to rides_path
    else
      render "new"
    end
  end

  def update
    @ride = Rides.find(params[:id])

    if @ride.update(ride_params)
      redirect_to rides_path
    else
      render "edit"
    end
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
