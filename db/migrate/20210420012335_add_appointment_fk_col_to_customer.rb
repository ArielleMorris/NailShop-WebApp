class AddAppointmentFkColToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :customer, foreign_key: true
  end
end
