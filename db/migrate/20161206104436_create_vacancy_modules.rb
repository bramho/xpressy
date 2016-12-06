class CreateVacancyModules < ActiveRecord::Migration[5.0]
  def change
    create_table :vacancy_modules do |t|
      t.string :module
      t.integer :horizontal_position
      t.integer :vertical_position
      t.integer :width_size
      t.integer :hight_size
      t.references :vacancy, foreign_key: true

      t.timestamps
    end
  end
end
