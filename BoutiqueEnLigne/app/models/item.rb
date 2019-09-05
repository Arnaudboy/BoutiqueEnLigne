class Item < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :price, length: { minimum: 1 }
	has_many :carts
	has_many :orders, through: :carts
end
