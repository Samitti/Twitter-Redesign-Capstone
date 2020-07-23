class PagesController < ApplicationController
  before_action :sign_in, except: %i[index]

  def index; end

  def home
    @new_post = Post.new
    @posts = Post.order('created_at DESC').includes(:user, :likes).limit(10)
    @not_following = User.all - current_user.following
  end

  def profile
    @new_post = Post.new
    @user = User.find(params[:id].nil? ? current_user.id : params[:id])
    @followers = @user.followers
    @posts = @user.posts.includes(:likes).limit(10)
  end
end
