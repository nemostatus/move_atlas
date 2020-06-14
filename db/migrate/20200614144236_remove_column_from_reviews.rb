class RemoveColumnFromReviews < ActiveRecord::Migration[6.0]
  def change
   remove_column :reviews, :overall_rating, :integer
  end
end