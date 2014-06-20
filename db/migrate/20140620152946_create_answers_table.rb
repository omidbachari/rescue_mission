class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :desription, null: false

      t.timestamps
    end
  end
end
