class AddDeliveryTimeToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :delivery_time, :text
  end
end
