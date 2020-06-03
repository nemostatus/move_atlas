class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :bug_type
      t.integer :customer_service_response_rating
      t.belongs_to :user
      t.belongs_to :vehicle
      t.timestamps
    end
  end
end
