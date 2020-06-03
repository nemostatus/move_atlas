class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :plate_number 
      t.string :plate_state
      t.string :vehicle_type
      t.integer :rent_date
      t.timestamps
    end
  end
end
