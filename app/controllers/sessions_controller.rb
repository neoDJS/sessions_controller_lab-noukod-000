class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:name]

    redirect_to root_path
  end

  def destroy
    session.delete :username
  end
end
