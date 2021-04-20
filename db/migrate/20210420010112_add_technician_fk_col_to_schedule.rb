class AddTechnicianFkColToSchedule < ActiveRecord::Migration[6.1]
  def change
    add_reference :schedules, :technician, foreign_key: true
  end
end
