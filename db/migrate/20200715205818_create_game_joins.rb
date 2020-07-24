class CreateGameJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :game_joins do |t|
      t.string :answer
      t.integer :question_id
      t.integer :game_id
      t.integer :score
      t.string :result_summary

      t.timestamps
    end
  end
end
