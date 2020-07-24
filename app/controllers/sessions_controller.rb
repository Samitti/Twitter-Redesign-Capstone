class SessionsController < ApplicationController
  before_action :sign_in, except: %i[new create]
  def index; end

  def show; end

  def new; end

  def create
    user = User.find_by(session_params)
    if user
      session[:user_id] = user.id
      redirect_to home_path, notice:
      "Welcome #{params[:username]}, successfully Signed In!"
    else
      redirect_to request.referrer, alert: 'Invalid Username'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'You signed out'
  end

  private

  def session_params
    params.require(:session).permit(:username)
  end
end
