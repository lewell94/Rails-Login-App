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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "something"
      sign_in @user
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :firstName, :lastName, :labelName, :labelScene, :bandOne, :bandTwo, :bandThree)
  end

end
