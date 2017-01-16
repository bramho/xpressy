class CreateContactInformationModules < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_information_modules do |t|
      t.string :gender
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :woonplaats
      t.string :email

      t.timestamps
    end
  end
end
