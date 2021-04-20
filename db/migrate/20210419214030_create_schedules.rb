class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.timestamp :from
      t.timestamp :to
      t.date :days_working

      t.timestamps
    end
  end
end
