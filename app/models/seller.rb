class Seller < ActiveRecord::Base
  attr_accessible :address, :delivery_cost, :delivery_scope, :name, :starting_price
  has_one :shop
  has_many :products
end
