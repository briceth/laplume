class ExperiencesController < ApplicationController

  def new
    @user = current_user
  end

  def create
    @user = current_user
    @experience = Experience.new(user: @user + experience_params)
    @experience.save
  end

  def edit
    @user = current_user
    @experience = Experience.new
  end

  def update
    @user = current_user
    @experience = Experience.new(user: @user + experience_params)
    @experience.save
    redirect_to user_path(@user) #todo creat route user
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to user_path(@user)
  end

  private

  def experience_params
    params.require(:experience).permit(:category, :user_id???, :title, :organization, :start_date, :end_date, :description)
  end
end
