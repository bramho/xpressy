class AddWalletToReactions < ActiveRecord::Migration[5.0]
  def change
    add_column :reactions, :wallet, :boolean, default: false
  end
end
