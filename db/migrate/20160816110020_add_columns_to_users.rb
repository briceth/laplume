class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :writer?, :boolean, default: false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :available?, :boolean, default: true
    add_column :users, :price, :integer
    add_column :users, :title, :string
  end
end
