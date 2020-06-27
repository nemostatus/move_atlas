class RemoveColumnsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :status, :boolean
    remove_column :reviews, :bug_type, :string
  end
end
