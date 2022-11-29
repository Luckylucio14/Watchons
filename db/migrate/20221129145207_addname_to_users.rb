class AddnameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, first_name, :string
    add_column :users, last_name, :string
    rename_column :users, caracteristic, characteristic 
  end
end
