class Item < ApplicationRecord

	has_many :carts
	has_many :orders, through: :carts

	validates :title, presence: true
	validates :description, presence: true
	validates :price, length: { minimum: 1 }
	
end
