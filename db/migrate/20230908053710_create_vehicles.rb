class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :year
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
