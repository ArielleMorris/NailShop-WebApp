class AddAppointmentFkColToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_reference :customers, :appointment, foreign_key: true
  end
end
