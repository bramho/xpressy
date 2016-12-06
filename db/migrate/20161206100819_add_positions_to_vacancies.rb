class AddPositionsToVacancies < ActiveRecord::Migration[5.0]
   def change
      add_column :vacancies, :positions_array, :text
   end
end
