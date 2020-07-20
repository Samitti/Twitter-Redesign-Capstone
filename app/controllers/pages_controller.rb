class PagesController < ApplicationController
  def index
  end

  def home
    @posts= Post.all
    @newPost = Post.new
    @users = User.all
  end

  def profile
    @posts= Post.all
    @newPost = Post.new    
    @user = User.find(params[:id] == nil ? current_user.id : params[:id])
    @followers = @user.followers
  end
end
