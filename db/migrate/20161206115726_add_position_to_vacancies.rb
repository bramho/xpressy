class AddPositionToVacancies < ActiveRecord::Migration[5.0]
  def change
     add_column :vacancies, :horizontal_positions_array, :text
     add_column :vacancies, :vertical_positions_array, :text
     add_column :vacancies, :width_size_array, :text
     add_column :vacancies, :hight_size_array, :text
  end
end
