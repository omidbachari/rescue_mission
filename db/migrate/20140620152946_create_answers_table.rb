class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers_tables do |t|
      t.text :desription, null: false

      t.timestamps
    end
    end
  end
end
6174820085
