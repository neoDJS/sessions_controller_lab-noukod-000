class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:username] = params[:name]

      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :username
  end
end
