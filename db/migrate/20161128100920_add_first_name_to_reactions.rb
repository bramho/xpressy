class AddFirstNameToReactions < ActiveRecord::Migration[5.0]
  def change
     add_column :reactions, :first_name, :string
     add_column :reactions, :last_name, :string
     add_column :reactions, :age, :number
     add_column :reactions, :education, :string
  end
end
