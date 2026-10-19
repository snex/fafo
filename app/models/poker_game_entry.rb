class PokerGameEntry < ApplicationRecord
  belongs_to :poker_game

  validates :name, presence: true

  acts_as_list scope: [:poker_game]
end
