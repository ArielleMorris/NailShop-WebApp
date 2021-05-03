class AddUserAccountFields < ActiveRecord::Migration[6.1]

  #Adds customer attributes to User
  
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
  end
end
