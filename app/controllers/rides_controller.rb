class RidesController < ApplicationController

  def index
    @rides = Rides.all
  end

  def new
    @status = Rides.status
  end

end
