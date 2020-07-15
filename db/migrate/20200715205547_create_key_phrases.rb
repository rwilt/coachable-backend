class CreateKeyPhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :key_phrases do |t|
      t.Array :phrases
      t.string :industry

      t.timestamps
    end
  end
end
