class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.new(puppy_id: params[:puppy_id])
    if favorite.save
      redirect_to my_puppy_dashboard_path
    else
      render root_path
    end
  end
end