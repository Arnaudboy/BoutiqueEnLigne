class CartsController < ApplicationController


  def show 
  	@cart = current_user.cart
  	@item = Item.find(params[:id])
  end

  def create
  	@user = current_user
  	@cart = Cart.create!
  	@user.update(cart: @cart)
  	puts "#" *60
  	puts @user.cart
  	puts "#" *60
  end

end
