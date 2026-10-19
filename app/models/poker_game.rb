class PokerGame < ApplicationRecord
  has_many :poker_game_entries, dependent: :destroy

  validates :title, presence: true
  validates :location, presence: true
  validates :datetime, presence: true
end
