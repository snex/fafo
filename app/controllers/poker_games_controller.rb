class PokerGamesController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]

  def index
    @poker_games = PokerGame.includes(:poker_game_entries).where(datetime: Time.current..).order(:datetime)
  end

  def show
  end

  def new
    @poker_game = PokerGame.new
  end

  def create
    PokerGame.create!(poker_game_params)

    redirect_to poker_games_path
  end

  def edit
    @poker_game = PokerGame.find(params[:id])
  end

  def update
    @poker_game = PokerGame.find(params[:id])
    @poker_game.update!(poker_game_params)

    redirect_to poker_games_path
  end

  private

  def poker_game_params
    params.require(:poker_game).permit(:title, :location, :datetime)
  end
end
