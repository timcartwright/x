class LocationsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @location = Location.new
  end
end
