class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :question
      t.string :answer
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
