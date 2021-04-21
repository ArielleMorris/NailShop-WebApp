class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :service_code
      t.string :service_name
      t.integer :rating_num
      t.text :ratings_desc

      t.timestamps
    end
  end
end
