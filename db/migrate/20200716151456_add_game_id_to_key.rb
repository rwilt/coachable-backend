class AddGameIdToKey < ActiveRecord::Migration[6.0]
  def change
    add_column :key_phrases, :game_id, :integer
  end
end
