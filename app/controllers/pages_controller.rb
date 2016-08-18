class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
  end

  def search
    @users = User.all
    @writers = @users.where(writer: true).reject { |writer| writer == current_user }
    # @writers_selected = @writers.where(skill: params[:skill])
  end
end
