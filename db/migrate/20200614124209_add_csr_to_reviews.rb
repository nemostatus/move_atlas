class AddCsrToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :customer_service_rating, :integer
  end
end
