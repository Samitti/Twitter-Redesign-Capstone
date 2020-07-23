class PostsController < ApplicationController
  before_action :sign_in

  def index
  end

  def new
    @posts = Posts.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |f|
      if @post.save
        f.html { redirect_to home_path, notice: 'Post Created' }
      else
        f.html { redirect_to home_path, notice: @post.errors.full_messages }
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :content)
  end
end
