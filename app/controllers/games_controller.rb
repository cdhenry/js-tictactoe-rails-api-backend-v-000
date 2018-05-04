class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]
  
  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(state: params[:id])
    @game.update(game_params)
    render json: @game, status: 202
  end

  def index
    @games = Game.all
    render json: @games, status: 200
  end

  private 

    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:state)
    end
end
