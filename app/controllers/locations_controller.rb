# Mostly for interacting with the Geocoder gem
class LocationsController < ApplicationController

  def index
    if params[:search]
      @locations = Location.near(params[:search], 50, order: 'distance')
    else
      @locations = Location.all
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to @location, notice: 'Location saved with much success!'
    else
      render action: 'new'
    end
  end

  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end
end
