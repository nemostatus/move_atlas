class AddMoreColumnsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :status, :boolean
    add_column :reviews, :company_name, :string
    add_column :reviews, :pick_up_date, :date
  end
end
