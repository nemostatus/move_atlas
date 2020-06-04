class RemoveColumnsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews,  :pick_up_date, :date
    remove_column :reviews,  :company_name, :string
    remove_column :reviews,  :status, :boolean
    remove_column :reviews, :bug_type, :string
    remove_column :vehicles,   :rent_date, :integer
  end
end
