class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.decimal :lat
      t.decimal :long
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
