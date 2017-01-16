class AddLocationToVacancy < ActiveRecord::Migration[5.0]
  def change
    add_reference :vacancies, :location, foreign_key: true
  end
end
