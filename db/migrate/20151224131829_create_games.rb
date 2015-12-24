class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.text :instructions
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end