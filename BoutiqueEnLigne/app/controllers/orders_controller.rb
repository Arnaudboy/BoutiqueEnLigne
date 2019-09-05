class OrdersController < ApplicationController
  def index
  	@cart = Cart.find(current_user.cart[:id])
  	@order = Item.find(@cart.item_id)
  	puts "#"*60
  	puts @cart.item_id
  	puts "#"*60
  	
  end

  def create

  	@cart = Cart.find(current_user.cart[:id])
    @item = Item.find(@cart[:item_id])
  	puts "#"*60
  	puts @item
  	puts "#"*60
  	@order = Order.create!(user: current_user, item: @item )
  	@cart.destroy
  	redirect_to root_path
  end
end
