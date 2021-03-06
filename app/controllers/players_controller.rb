class PlayersController < ApplicationController
  def create
    @player = Player.new
    @game = Game.find(params[:game_id])
    @player.phone = (params[:player][:phone])
    @player.game_id = (params[:game_id])
    @player.save!
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy!
  end
end