class Order < ApplicationRecord

	belongs_to :user
	belongs_to :cart, optional: true
	belongs_to :item
	
end
