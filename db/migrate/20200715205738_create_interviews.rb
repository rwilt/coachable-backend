class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :industry
      t.string :title
      t.datetime :date
      t.string :interviewer
      t.string :company
      t.string :note
      t.boolean :result

      t.timestamps
    end
  end
end
