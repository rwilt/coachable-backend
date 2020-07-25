class AddFinalScoreToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :final_score, :integer, default: 0
  end
end
