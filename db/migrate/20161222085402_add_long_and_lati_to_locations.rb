class AddLongAndLatiToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :longitude, :float
    add_column :locations, :latitude, :float
  end
end
