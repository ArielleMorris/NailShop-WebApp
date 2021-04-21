class AddServiceFkColToPromotions < ActiveRecord::Migration[6.1]
  def change
    add_reference :promotions, :service, foreign_key: true
  end
end
