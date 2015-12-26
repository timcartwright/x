class LocationsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @location = Location.new
  end

  def create
    location = Location.new(location_params)
    game_id = params[:game_id]
    location.game_id = game_id
    location.save!
    redirect_to game_path(game_id)
  end

private
  def location_params
    params.require(:location).permit(:lat, :long, :name, :description)
  end
end