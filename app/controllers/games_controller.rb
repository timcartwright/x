class GamesController < ApplicationController

  def index
    @games = current_user.games.all
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    @locations = @game.locations.all
    @players = @game.players.all
    @player = Player.new
  end

  def create
    game = Game.new(game_params)
    game.user = current_user
    game.save!
  end

private
  def game_params
      params.require(:game).permit(:name, :description, :instructions)
  end
end