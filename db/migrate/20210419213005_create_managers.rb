class CreateManagers < ActiveRecord::Migration[6.1]
  def change
    create_table :managers do |t|
      t.string :manager_firstname
      t.string :manager_lastname

      t.timestamps
    end
  end
end
