class OrdersController < ApplicationController
  def index
  	@order = Item.find(Cart.find(current_user.cart[:id]).item_id)
  end

  def create
  	@item = Item.find(Cart.find(current_user.cart[:id]))
  	@order = Order.create!(user: current_user, cart: current_user.cart,item: @item )
  end
end
