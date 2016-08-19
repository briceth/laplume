class MissionsController < ApplicationController
before_action :set_mission, only: [:show, :edit, :update, :destroy]

  def index
    @missions = Mission.all
    @missions_created = Mission.where(user: current_user).all
    # @missions_taken = Mission.where(self.offer.user: current_user}) current_user).all
    @mission = Mission.new
    @users = User.all
  end

  def show
    @offers = @mission.offers
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

  # def create_mission_and_offer
  #   @mission = Mission.new(mission_params)
  #   @mission.user = current_user
  #   if @mission.save
  #     @offer = Offer.new(mission: @mission, user_id: params[:offer_user], status: 'pending')
  #     if @offer.save
  #      redirect_to missions_path
  #     else
  #       # TODO
  #       # render form offer
  #     end
  #   else
  #     # TODO ?
  #   end
  # end

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
