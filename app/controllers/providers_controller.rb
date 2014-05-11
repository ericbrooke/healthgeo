class ProvidersController < ApplicationController

before_action :set_provider, only: [:show,:edit, :update,:destroy]

  def index
    @providers = Provider.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @providers}
      format.json { render json: @providers}
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render xml: @providers}
      format.json { render json: @providers}
    end
  end

  def new
      @provider = Provider.new
      @provider.locations.build
  end

  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      flash[:notice] = "Provider has been created."
      redirect_to providers_path
    else
      flash[:alert] = "Provider has NOT been created."
      render "new"
    end

  end

  def edit
    @provider.locations.build
  end

  def update
    if @provider.update(provider_params)
      flash[:notice] = "Provider has been updated."
      redirect_to @provider
    else
      flash[:alert] = "Provider has not been updated."
      render edit
    end
  end

  def destroy
    @provider.destroy

    flash[:notice] = "Provider has been destroyed."
    redirect_to providers_path
  end

  def locations
    # @providers = Provider.all
    @locations = @provider.locations
  end

private

  def provider_params
    params.require(:provider).permit(:name, :kind)
  end

  def set_provider
    @provider = Provider.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The provider you were looking for could not be found."
      redirect_to providers_path
  end

  def provider_params
    params.require(:provider).permit(:name, :kind, locations_attributes: [:id, :address])
  end

end
