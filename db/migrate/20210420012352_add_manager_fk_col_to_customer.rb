class AddManagerFkColToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_reference :customers, :manager, foreign_key: true
  end
end
