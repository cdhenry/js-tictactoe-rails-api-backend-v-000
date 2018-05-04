class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(params[:state])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update(params[:state])
    render json: @game, status: 202
  end

  def index
    @games = Game.all
    render "home/index"
  end
end
