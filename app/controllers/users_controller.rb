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
  end
end
