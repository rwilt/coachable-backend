class AddUserIdtoKeyPhrase < ActiveRecord::Migration[6.0]
  def change
    add_column :key_phrases, :user_id, :integer
  end
end
