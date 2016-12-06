class CreateVacancyModules < ActiveRecord::Migration[5.0]
  def change
    create_table :vacancy_modules do |t|
      t.string :module
      t.int :horizontal_position
      t.int :vertical_position
      t.int :width_size
      t.int :hight_size
      t.references :vacancy, foreign_key: true

      t.timestamps
    end
  end
end
