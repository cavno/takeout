class Cart < ActiveRecord::Base
 # attr_accessible :product
  has_many :line_items, dependent: :destroy
end
