class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @experiences = @user.experiences
    @work_experiences = @experiences.select { |experience| experience.category == "Experience" }
    @educations = @experiences.select { |experience| experience.category == "Education" }
  end

  def edit
  end

  def update
    @user = current_user
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number)
  end
end
