class PagesController < ApplicationController
  def index
  end

  def home
    @posts= Post.all
  end

  def profile
    @posts= Post.all
    @newPost = Post.new
  end
end
