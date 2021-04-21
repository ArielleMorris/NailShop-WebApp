class CreateServicesBookeds < ActiveRecord::Migration[6.1]
  def change
    create_table :services_bookeds do |t|
      t.string :service_name
      t.decimal :price

      t.timestamps
    end
  end
end
