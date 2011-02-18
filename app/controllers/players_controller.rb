class PlayersController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @Title = "Show Players"
    @Players = Player.all
  end

  def new
    @Title = "New Player"
    @player = Player.new
  end

  def edit
  end

  def destroy
  end
  
  def create
    @player = Player.new(params[:player])
    if @player.save
      @Title = "Show Players"
      @Players = Player.all
      render 'show'
    else
      render 'new'
    end
  end

end
