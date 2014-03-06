class UsersController < ApplicationController
  skip_before_filter :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      login(user_params["email"], user_params[:password], true)
      redirect_to root_url, notice: "Sign up!"
    else
      flash.now[:alert] = 'アカウントの作成に失敗しました'
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
