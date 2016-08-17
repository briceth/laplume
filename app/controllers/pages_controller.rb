class PagesController < ApplicationController
  def home
  end

  def search
    @users = User.all
    @writers = @users.where(writer: true)
    @writers_selected = @writers.where(skill: params[:skill])
  end
end
