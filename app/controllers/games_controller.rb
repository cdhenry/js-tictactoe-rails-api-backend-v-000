class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(params[:state])
    redirect_to root_path
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    render "home/index"
  end

  def index
    @games = Game.all
    render "home/index"
  end
end
