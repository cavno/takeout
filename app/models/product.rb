class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :avatar, :tag_list
  acts_as_taggable

  has_many :line_items
  belongs_to :seller
  belongs_to :shop
  

  has_attached_file :avatar, :styles => { :medium => "220x220", :thumb => "120x120" }, :default_url => "/images/:style/missing.png"
end

