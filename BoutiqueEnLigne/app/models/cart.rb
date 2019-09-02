class Cart < ApplicationRecord
	belongs_to :item
	has_many :users
	has_many :orders
end
