class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :avatar
  has_many :line_items
  belongs_to :seller
  belongs_to :shop
  

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end

