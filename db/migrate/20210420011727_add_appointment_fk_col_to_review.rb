class AddAppointmentFkColToReview < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :appointment, foreign_key: true
  end
end
