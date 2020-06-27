class AddBugStatusAndTypeToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :status, :boolean
    add_column :reviews, :bug_type, :string
  end
end
