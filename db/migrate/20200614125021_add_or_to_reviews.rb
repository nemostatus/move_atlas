class AddOrToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :overall_rating, :integer
  end
end
