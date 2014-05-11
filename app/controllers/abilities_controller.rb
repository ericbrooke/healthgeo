class AbilitiesController < ApplicationController

  before_action :set_ability, only: [:show,:edit, :update,:destroy]

    def index
      @abilities = Ability.all
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render xml: @abilitys}
        format.json { render json: @abilitys}
      end
    end

    def show
      respond_to do |format|
        format.html
        format.xml  { render xml: @abilitys}
        format.json { render json: @abilitys}
      end
    end

    def new
        @ability = Ability.new
    end

    def create
      @ability = Ability.new(ability_params)

      if @ability.save
        flash[:notice] = "ability has been created."
        redirect_to abilities_path
      else
        flash[:alert] = "ability has NOT been created."
        render "new"
      end

    end

    def edit
    end

    def update
      if @ability.update(ability_params)
        flash[:notice] = "ability has been updated."
        redirect_to @ability
      else
        flash[:alert] = "ability has not been updated."
        render edit
      end
    end

    def destroy
      @ability.destroy

      flash[:notice] = "ability has been destroyed."
      redirect_to abilities_path
    end

  private

    def ability_params
      params.require(:ability).permit(:name, :equipment)
    end

    def set_ability
      @ability = Ability.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        flash[:alert] = "The ability you were looking for could not be found."
        redirect_to abilitys_path
    end
end
