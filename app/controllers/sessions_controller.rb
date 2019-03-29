class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name]
    session[:username] = params[:name]

    redirect_to root_path
  else
    redirect_to login_path
  end

  def destroy
    session.delete :username
  end
end
