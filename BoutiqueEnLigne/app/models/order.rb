class Order < ApplicationRecord

	belongs_to :user
	belongs_to :cart
	belongs_to :item
	
end
