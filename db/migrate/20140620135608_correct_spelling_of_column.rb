class CorrectSpellingOfColumn < ActiveRecord::Migration
  def change
    drop_table :questions
    create_table :questions do |t|
      t.string :title, null: false
      t.text :description, null: false
    end
  end
end
