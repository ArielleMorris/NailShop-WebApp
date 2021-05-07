class CreatePromotions < ActiveRecord::Migration[6.1]
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :promo_code, limit: 8
      t.integer :discount_flat
      t.decimal :discount_percent
      t.string :service_type

      t.timestamps
    end
  end
end
