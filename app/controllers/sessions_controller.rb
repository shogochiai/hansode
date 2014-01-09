class SessionsController < ApplicationController
  skip_before_filter :require_login, except: :destroy
  def create
    user = login(params[:email], params[:password], params[:remenber_me])
    pp user
    if user
      redirect_back_or_to root_url, notice: 'Logged in!'
    else
      flash.now.alert = 'Email or password was invalid!'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end
end