class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :img
      t.string :breed
      t.integer :age
      t.string :about
      t.string :owner

      t.timestamps
    end
  end
end
