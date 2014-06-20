class AddCreatedAt < ActiveRecord::Migration
  def change
    drop_table :questions
    create_table "questions", force: true do |t|
      t.string "title",       null: false
      t.text   "description", null: false

      t.timestamps
    end
  end
end
