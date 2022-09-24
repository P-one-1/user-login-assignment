class SessionsController < ApplicationController
  before_action :logged_in?, only: ['new']

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.password == params[:password]
      session[:user_id] = user.id
      flash[:success] = 'Logged in!'
      redirect_to users_show_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logged out!'
    redirect_to sessions_new_path
  end
end
