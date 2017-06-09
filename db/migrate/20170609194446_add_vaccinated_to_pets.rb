class AddVaccinatedToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :vaccinated, :boolean
  end
end
