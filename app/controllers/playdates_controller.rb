class PlaydatesController < ApplicationController
  def new
    @puppy = Puppy.find(params[:puppy_id])
    @playdate = Playdate.new
  end

  def create
    puppy = Puppy.find(params[:puppy_id])
    user = current_user
    playdate = user.playdates.new(params.require(:playdate).permit(:time, :attendees))
    playdate.puppy_id = puppy.id
    if playdate.save
      redirect_to my_puppy_dashboard_path
    end
  end
end