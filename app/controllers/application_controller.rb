class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:home, :search]

  protect_from_forgery with: :exception
end
