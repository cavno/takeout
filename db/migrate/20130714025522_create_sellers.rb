class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.text :address
      t.integer :delivery_cost, defalut:0
      t.integer :starting_price,default:20
      t.text :delivery_scope

      t.timestamps
    end
  end
end
