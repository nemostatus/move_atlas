class RenameCsrrToCustomerExperienceRating < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :customer_service_response_rating, :customer_experience_rating
  end
end
