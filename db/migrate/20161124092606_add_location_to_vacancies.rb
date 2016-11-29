class AddLocationToVacancies < ActiveRecord::Migration[5.0]
  def change
    add_column :vacancies, :location, :string
  end
end
