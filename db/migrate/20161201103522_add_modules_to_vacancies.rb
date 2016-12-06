class AddModulesToVacancies < ActiveRecord::Migration[5.0]
  def change
     add_column :vacancies, :modules_array, :text
  end
end
