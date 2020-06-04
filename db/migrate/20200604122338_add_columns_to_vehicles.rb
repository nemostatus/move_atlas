class AddColumnsToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles,  :pick_up_date, :date
    add_column :vehicles,  :company_name, :string
    add_column :vehicles,  :status, :boolean
    add_column :vehicles, :bug_type, :string
  end
end
