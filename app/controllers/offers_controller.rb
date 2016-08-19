class OffersController < ApplicationController

  def new
    @offer = Offer.new
    @missions = current_user.missions
  end

  def create
    @mission = Mission.find(offer_params[:mission])
    @offer = Offer.new(mission: @mission)
    @writer = User.find(offer_params[:user])
    @offer.user = @writer
    @offer.save
    redirect_to mission_path(@mission)
  end

  def show
    @offer = Offer.find(params[:id])
    @writer = @offer.user
    @messages = Message.all (TODO only filter the ones sent by the two parties)
    @messages_sorted = @messages.sort { |a,b| a.created_at <=> b.created_at }
  end

  private

  def offer_params
    params.require(:offer).permit(:mission, :user)
  end

end
