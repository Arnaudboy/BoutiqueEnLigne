class ItemsController < ApplicationController

	def index

		@items = Item.all

	end
	
	def show

		@item = Item.find(params[:id])
		puts "#" *60
  	puts current_user.cart.id
  	puts "#" *60

	end

	def update
		
		@item = Item.find(params[:id])

		if user_signed_in? 

			@cart = Cart.find(current_user.cart[:id])

			@cart.update(item_id: @item.id)
			puts "#"*60
			puts @cart.item_id
			puts "#"*60

			redirect_to root_path

		else
			redirect_to item_path(@item.id)

		end 

	end 

	include ApplicationHelper

end

