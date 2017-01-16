class AddOnOrOffToVacancies < ActiveRecord::Migration[5.0]
  def change
     add_column :vacancies, :online, :boolean, default: false
  end
end
