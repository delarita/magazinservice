class AddInfosToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nick_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :adress, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
  end
end
