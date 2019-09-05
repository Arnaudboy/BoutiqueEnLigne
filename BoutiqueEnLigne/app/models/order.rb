class Order < ApplicationRecord
	belongs_to :user
	belongs_to :cart
	has_many :items, through: :carts


	after_create :Order_send


	def Order_send
		UserMailer.Order_info(User).deliver_now
    end

end
