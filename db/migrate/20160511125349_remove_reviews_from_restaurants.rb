class RemoveReviewsFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :reviews, :string
  end
end
