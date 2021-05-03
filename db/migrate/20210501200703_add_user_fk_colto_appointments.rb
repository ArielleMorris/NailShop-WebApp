class AddUserFkColtoAppointments < ActiveRecord::Migration[6.1]

  #User copy of the original AddCustomerFkColtoAppointments
  
  def change
    add_reference :appointments, :user, foreign_key: true
  end
end
