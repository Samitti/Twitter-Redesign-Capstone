class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(post_id: params[:post_id])

    if @like.save
      redirect_to request.referrer, notice: 'You just liked a tweet'
    else
      redirect_to request.referrer, alert: 'You can only like a tweet once.'
    end
  end
end
