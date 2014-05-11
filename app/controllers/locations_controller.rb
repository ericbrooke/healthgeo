# Mostly for interacting with the Geocoder gem
class LocationsController < ApplicationController

before_action :set_location, only: [:show,:edit, :update,:destroy]

  def index
    if params[:search]
      @locations = Location.near(params[:search], 50, order: 'distance')
    else
      @locations = Location.all
    end
  end

  def show
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

  def edit
  end

  def update
    if @location.update(location_params)
      flash[:notice] = "Location has been updated."
      redirect_to @location
    else
      flash[:alert] = "Location has not been updated."
      render edit
    end
  end

  def destroy
    @location.destroy

    flash[:notice] = "Location has been destroyed."
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end

  def set_location
    @location = Location.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The location you were looking for could not be found."
      redirect_to locations_path
  end
end
