class CreateVacancies < ActiveRecord::Migration[5.0]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :description
      t.text :demands
      t.string :branche
      t.string :education_level
      t.text :experience

      t.timestamps
    end
  end
end
