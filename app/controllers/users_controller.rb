class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.photo ||= "/public/profile_image.jpg"
    @user.cover_image ||= "/public/cover_image.jpg"
    if @user.save
      redirect_to home_path, notice: "Welcome Successfuly Signed In."
    else 
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :full_name, :photo, :cover_image)
  end
end
