class CreateTechnicians < ActiveRecord::Migration[6.1]
  def change
    create_table :technicians do |t|
      t.string :tech_name

      t.timestamps
    end
  end
end
