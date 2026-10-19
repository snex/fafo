class CreatePokerGameEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :poker_game_entries do |t|
      t.string :name, null: false
      t.references :poker_game, null: false, foreign_key: true
      t.integer :position, null: false

      t.timestamps
    end
  end
end
