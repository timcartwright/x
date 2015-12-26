class AddClueToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :clue, :text
  end
end