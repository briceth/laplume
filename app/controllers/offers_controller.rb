class OffersController < ApplicationController

  def new
    @offer = Offer.new
    @missions = current_user.missions
  end

  def create
    @mission = Mission.find(offer_params[:mission])
    @offer = Offer.new(mission: @mission)
    @offer.user = current_user
    redirect_to missions_path
  end

  private

  def offer_params
    params.require(:offer).permit(:mission)
  end

end
