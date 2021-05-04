class AddCustomerManagerRolesToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :customer_role, :boolean, default: true
    add_column :users, :manager_role, :boolean, default: false
  end
end
