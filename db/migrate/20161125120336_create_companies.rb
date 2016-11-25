class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :postal_code
      t.string :city

      t.timestamps
    end
  end
end
