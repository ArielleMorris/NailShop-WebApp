class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.timestamp :date_created
      t.string :client_name
      t.integer :client_mobile
      t.decimal :price_service
      t.string :service_name
      t.string :technician_name
      t.decimal :promo_code
      t.boolean :cancellation
      t.text :cancellation_reason

      t.timestamps
    end
  end
end
