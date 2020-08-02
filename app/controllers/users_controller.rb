class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :user_params]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    p session[:user_id]
    redirect_to '/'
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  private
  def  user_params
    params.require(:user).permit(:username,:password)
  end
end
