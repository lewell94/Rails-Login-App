class UsersController < ApplicationController

  before_filter :signed_in_user, only: [:index, :edit, :update]
  before_filter :correct_user, only: [:edit, :update]

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
    #@user = User.find(params[:id])
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

  private

    def signed_in_user
      redirect_to root_url unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to root_url unless current_user?(@user)
    end
end
