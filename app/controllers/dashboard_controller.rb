class DashboardController < ApplicationController
  def index
    @my_favorites = current_user.favorites
  end
end