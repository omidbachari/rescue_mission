class FixAnswersTableQuestionIdandSpelling < ActiveRecord::Migration
  def change
    drop_table :answers
    create_table :answers do |t|
      t.text :description, null: false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
