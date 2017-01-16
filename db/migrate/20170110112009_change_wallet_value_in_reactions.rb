class ChangeWalletValueInReactions < ActiveRecord::Migration[5.0]
  def change
     change_column :reactions, :wallet, :boolean, :default => false
  end
end
