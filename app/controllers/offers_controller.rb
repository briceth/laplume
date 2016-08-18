class OffersController < ApplicationController

  before_action :set_mission, only: [:create]

  def new
    @offer = Offer.new
    @mission = Mission.new
    # @user = User.find(params[:format].to_i)
  end

  # def create
  #   @user = User.find(params[:format].to_i)
  #   @mission = Mission.new
  #   @offer = Offer.new(status: "pending", mission: @mission, user: @user )
  #   if @offer.save
  #     redirect_to mission_path(@mission)
  #   else
  #     render "missions/show"
  #   end
  # end

  private

  def set_mission
    @mission = Mission.find(params[:mission_id])
  end

  def user_params
    params.require(:user).permit(:id)
  end

end
