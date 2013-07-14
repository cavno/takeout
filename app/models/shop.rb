class Shop < ActiveRecord::Base
  attr_accessible :product_id, :seller_id
  has_one :seller
  has_many :products
end
