class DashboardController < ApplicationController
  def index
    @my_favorites = current_user.favorites
    @my_playdates = current_user.playdates
  end
end