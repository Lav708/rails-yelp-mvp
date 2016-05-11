class RenameColumnToRestaurant < ActiveRecord::Migration
  def change
    rename_column :restaurants, :phone_number
    add_column :restaurants, :phone_number, :string, default: 0
  end
end
