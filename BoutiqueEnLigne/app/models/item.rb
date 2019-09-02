class Item < ApplicationRecord
	validates :title, presence: true, uniqueness: true
	validates :description, presence: true
	validates :price, length: { minimum: 1 }
end
