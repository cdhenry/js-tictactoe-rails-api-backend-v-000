class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @author = Author.find(params[:id])
    render json: @author, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    render "home/index"
  end

  def index
    @game = Game.all
    render "home/index"
  end
end
