class OffersController < ApplicationController

  before_action :set_mission, only: [:create]

  def create

    @offer = Offer.new(status: "on-going", mission: @mission, user: current_user)
    if @offer.save
      redirect_to mission_path(@mission)
    else
      render "missions/show"
    end
  end

  private

  def set_mission
    @mission = Mission.find(params[:mission_id])
  end

end
