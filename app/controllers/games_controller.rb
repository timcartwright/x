class GamesController < ApplicationController

  def index
    @games = current_user.games.all
    @game = Game.new
  end

  def create
    game = Game.new(game_params)
    game.user = current_user
    game.save!
    redirect_to games_path
  end

private
  def game_params
      params.require(:game).permit(:name, :description, :instructions)
  end
end