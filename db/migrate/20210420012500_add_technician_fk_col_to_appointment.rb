class AddTechnicianFkColToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :technician, foreign_key: true
  end
end
