class AddAppointmentFkColToCheckIn < ActiveRecord::Migration[6.1]
  def change
    add_reference :check_ins, :appointment, foreign_key: true
  end
end
