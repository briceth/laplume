class MissionsController < ApplicationController
before_action :set_mission, only: [:show, :edit, :update, :destroy]

  def index
    @missions = Mission.all
  end

  def show
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    if @mission.save

      redirect_to missions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @mission.update(mission_params)
      redirect_to mission_path
    else
      render :edit
    end
  end

  def destroy
    @mission.destroy
    redirect_to missions_path
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:title, :description, :category, :status)
  end


end
