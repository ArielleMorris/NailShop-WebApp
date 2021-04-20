class CreateCheckIns < ActiveRecord::Migration[6.1]
  def change
    create_table :check_ins do |t|
      t.string :client_name
      t.string :client_mobile
      t.integer :service_code

      t.timestamps
    end
  end
end
