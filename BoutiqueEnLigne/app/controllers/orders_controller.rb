class OrdersController < ApplicationController
  def index
  	@cart = Cart.find(current_user.cart[:id])
  	@order = Item.find(@cart.item_id)
  	puts "#"*60
  	puts @cart.item_id
  	puts "#"*60
  	
  end

  def create
  	@item = Item.find(Cart.find(current_user.cart[:id]).id)
  	@cart = Cart.find(current_user.cart[:id])
  	puts "#"*60
  	puts @item
  	puts "#"*60
  	@order = Order.create!(user: current_user, cart: current_user.cart,item: @item )
  	@cart.destroy
  	redirect_to root_path
  end
end
