class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.integer :phone_number
      t.string :category
      t.string :reviews

      t.timestamps null: false
    end
  end
end
