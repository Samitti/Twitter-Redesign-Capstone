class FollowingsController < ApplicationController
  def create
    @following = current_user.active_relationships.build(followed_id: params[:id])
    @following.save
    redirect_to request.referrer
  end

  def destroy
    current_user.active_relationships.find_by(params[:id]).destroy
    redirect_to request.referrer
  end
end
