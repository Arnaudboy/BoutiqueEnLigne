class UsersController < ApplicationController

  def show

  	@user = User.find(params[:id])

  end

  def edit
  	
  end

  def update

  	@user = Task.find(params[:id])
  	@user.update(user_params)

    flash[:notice] = "User edited"

  end 

  

  private

  def user_params
    params.permit(:email)
  end

end
