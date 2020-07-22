class PagesController < ApplicationController
  before_action :sign_in, except: %i[index]

  def index
  end

  def home
    @posts = Post.all
    @new_post = Post.new
    @not_following = User.all - current_user.following
  end

  def profile
    @posts = Post.all
    @new_post = Post.new
    @user = User.find(params[:id].nil? ? current_user.id : params[:id])
    @followers = @user.followers
  end
end
