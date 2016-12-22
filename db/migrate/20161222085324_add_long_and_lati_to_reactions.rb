class AddLongAndLatiToReactions < ActiveRecord::Migration[5.0]
  def change
    add_column :reactions, :longitude, :float
    add_column :reactions, :latitude, :float
  end
end
