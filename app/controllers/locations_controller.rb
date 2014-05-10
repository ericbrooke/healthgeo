# Mostly for interacting with the Geocoder gem
class LocationsController < ApplicationController
  def index
    if params[:search]
      @locations = Location.near(params[:search])
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
    @location = Location.(params[:location])
    if @location.save
      redirect_to @location, notice: 'Location saved with much success!'
    else
      render action: 'new'
  end
end
