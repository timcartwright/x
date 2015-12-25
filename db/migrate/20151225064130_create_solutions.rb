class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :player, index: true, foreign_key: true
      t.references :clue, index: true, foreign_key: true
      t.boolean :solved

      t.timestamps null: false
    end
  end
end
