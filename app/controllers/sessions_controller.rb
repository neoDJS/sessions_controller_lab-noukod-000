class SessionsController < ApplicationController
  def new
  end

  def create
    session[:username] = params[:name]

    render :hello
  end

  def destroy
  end
end
