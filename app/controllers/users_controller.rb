class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "User account created!"
    	redirect_to root_url
    else
      render "new"
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :firstName, :lastName)
  end

end
