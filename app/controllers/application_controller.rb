class ApplicationController < ActionController::Base
  def sign_in
    redirect_to root_path, notice: 'Please sign in first' unless current_user
  end

  def loged_in
    return if current_user
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
