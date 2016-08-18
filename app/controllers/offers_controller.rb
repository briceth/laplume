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

  def show
    @offer = Offer.find(params[:id])
    @writer = @offer.user
    @messages = Message.where(:user == current_user || :offer == @writer.offer )
    @messages_sorted = @messages.sort! { |a,b| a.created_at <=> b.created_at }
  private

  def offer_params
    params.require(:offer).permit(:mission)
  end

end
