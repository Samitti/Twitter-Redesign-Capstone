class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      session[:user_id] = @user.id
      redirect_to home_path, notice: 'Welcome Successfully Created Account.'
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :full_name, :photo, :cover_image)
  end
end
