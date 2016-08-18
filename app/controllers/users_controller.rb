class UsersController < ApplicationController
   skip_before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
    @experiences = @user.experiences
    @work_experiences = @experiences.select { |experience| experience.category == "Experience" }
    @work_experiences_sorted = @work_experiences.sort! { |a,b| b.end_date <=> a.end_date }
    @educations = @experiences.select { |experience| experience.category == "Education" }
    @educations_sorted = @educations.sort! { |a,b| b.end_date <=> a.end_date }
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :writer, :available, :title, :price, :phone_number, :photo)
  end
end
