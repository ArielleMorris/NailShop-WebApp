class AddAppointmentFkColToServicesBooked < ActiveRecord::Migration[6.1]
  def change
    add_reference :services_bookeds, :appointment, foreign_key: true
  end
end
