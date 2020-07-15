class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :transcript
      t.string :audio_file

      t.timestamps
    end
  end
end
