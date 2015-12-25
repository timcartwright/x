class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.references :location, index: true, foreign_key: true
      t.string :riddle

      t.timestamps null: false
    end
  end
end
