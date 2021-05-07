class AddCheckedInToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :check_in, :boolean, default: false
  end
end
