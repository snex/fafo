class CreatePokerGames < ActiveRecord::Migration[8.1]
  def change
    create_table :poker_games do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.datetime :datetime, null: false

      t.timestamps
    end
  end
end
