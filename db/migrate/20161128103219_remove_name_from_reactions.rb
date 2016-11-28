class RemoveNameFromReactions < ActiveRecord::Migration[5.0]
  def change
    remove_column :reactions, :name, :string
  end
end
