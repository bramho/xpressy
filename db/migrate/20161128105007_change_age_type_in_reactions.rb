class ChangeAgeTypeInReactions < ActiveRecord::Migration[5.0]
  def change
     change_column :reactions, :age, :integer
  end
end
