class PokerGameEntriesController < ApplicationController
  allow_unauthenticated_access only: %i[ create ]

  def create
    PokerGameEntry.create!(poker_game_entry_params)

    redirect_to poker_games_path
  end

  def destroy
    PokerGameEntry.find(params[:id]).destroy

    redirect_to poker_games_path
  end

  private

  def poker_game_entry_params
    params.require(:poker_game_entry).permit(:poker_game_id, :name)
  end
end
