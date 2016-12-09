class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
     rename_column :vacancies, :hight_size_array, :height_size_array
  end
end
