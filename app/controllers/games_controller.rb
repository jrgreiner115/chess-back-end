class GamesController < ApplicationController


  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(board: params[:board])
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update

  private

  def game_params
    params.require(:game).permit(:board)
  end
end
