class CreateReactions < ActiveRecord::Migration[5.0]
  def change
    create_table :reactions do |t|
      t.string :name
      t.text :body
      t.references :vacancy, foreign_key: true

      t.timestamps
    end
  end
end
