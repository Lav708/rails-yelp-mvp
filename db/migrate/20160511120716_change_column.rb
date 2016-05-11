class ChangeColumn < ActiveRecord::Migration
  def change
    remove_column :restaurants, :phone_number
    add_column :restaurants, :phone_number, :string, default: 0
  end
end
