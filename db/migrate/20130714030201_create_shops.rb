class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :seller_id
      t.string :product_id

      t.timestamps
    end
  end
end
