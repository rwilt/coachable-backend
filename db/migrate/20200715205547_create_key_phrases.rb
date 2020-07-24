class CreateKeyPhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :key_phrases do |t|
      t.string :phrases, :array => true, :default => '{}'
      # sets up empty array as default
      t.string :industry

      t.timestamps
    end
  end
end
