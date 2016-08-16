class ExperiencesController < ApplicationController

  def new
    @user = current_user
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    @experience.save
    redirect_to user_path(current_user)
  end

  def edit
    @user = current_user
    @experience = Experience.find(params[:id])
  end

  def update
    @user = current_user
    @experience = Experience.new(experience_params)
    @experience.save
    redirect_to user_path(@user)
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to user_path(@user)
  end

  private

  def experience_params
    params.require(:experience).permit(:category, :title, :organization, :start_date, :end_date, :description)
  end
end
