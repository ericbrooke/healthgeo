class SymptomsController < ApplicationController

  before_action :set_symptom, only: [:show,:edit, :update,:destroy]

    def index
      @symptoms = Symptom.all
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render xml: @symptoms}
        format.json { render json: @symptoms}
      end
    end

    def show
      respond_to do |format|
        format.html
        format.xml  { render xml: @symptoms}
        format.json { render json: @symptoms}
      end
    end

    def new
        @symptom = Symptom.new
    end

    def create
      @symptom = Symptom.new(symptom_params)

      if @symptom.save
        flash[:notice] = "Symptom has been created."
        redirect_to symptoms_path
      else
        flash[:alert] = "Symptom has NOT been created."
        render "new"
      end

    end

    def edit
    end

    def update
      if @symptom.update(symptom_params)
        flash[:notice] = "symptom has been updated."
        redirect_to @symptom
      else
        flash[:alert] = "symptom has not been updated."
        render edit
      end
    end

    def destroy
      @symptom.destroy

      flash[:notice] = "symptom has been destroyed."
      redirect_to symptoms_path
    end

  private

    def symptom_params
      params.require(:symptom).permit(:name,:request_count)
    end

    def set_symptom
      @symptom = Symptom.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        flash[:alert] = "The symptom you were looking for could not be found."
        redirect_to symptoms_path
    end

end
