class AddLocationToReactions < ActiveRecord::Migration[5.0]
  def change
    add_column :reactions, :address, :string
    add_column :reactions, :postal_code, :string
    add_column :reactions, :city, :string
    add_column :reactions, :country, :string
  end
end
