class AddEmailToReactions < ActiveRecord::Migration[5.0]
  def change
    add_column :reactions, :email, :string
  end
end
