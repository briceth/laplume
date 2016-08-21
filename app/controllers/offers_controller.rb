class OffersController < ApplicationController

  def new
    @offer = Offer.new
    @missions = current_user.missions
    @user = User.find(params[:user_id])
  end

  def create
    @mission = Mission.find(offer_params[:mission])
    @offer = Offer.new(mission: @mission)
    @writer = User.find(params[:user_id])
    @offer.user = @writer

    if @offer.save
      OfferMailer.creation_confirmation(@offer).deliver_now
      redirect_to mission_path(@mission)
    else
      render :new
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @writer = @offer.user
    @client = @offer.mission.user
    @messages = []
    @messages_writer = Message.where(user: @writer).all
      @messages_writer.each do |message|
        @messages << message
      end
    @messages_client = Message.where(user: @client).all
      @messages_client.each do |message|
        @messages << message
      end
    @messages_sorted = @messages.sort { |a,b| a.created_at <=> b.created_at }
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to missions_path
  end

  private

  def offer_params
    params.require(:offer).permit(:mission, :user)
  end

end
