class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.timestamp :date_created
      t.string :client_firstname
      t.string :client_lastname
      t.string :client_mobile
      t.decimal :price_service
      t.string :service_name
      t.string :technician_name

      t.timestamps
    end
  end
end
