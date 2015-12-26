class PlayersController < ApplicationController
  def create
    @player = Player.new
    @player.phone = (params[:player][:phone])
    @player.game_id = (params[:game_id])
    @player.save!
  end
end
