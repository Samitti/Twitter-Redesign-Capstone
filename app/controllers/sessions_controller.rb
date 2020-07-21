class SessionsController < ApplicationController
  before_action :sign_in, except: %i[new create]
  def index
  end

  def show
  end

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user
      session[:user_id] = user.id
      redirect_to home_path, notice:
      "Welcome #{:username}, you successfully Signed In!"
    else
      render 'new', alert:
      "User Name Invalid!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You signed out"
  end
end
