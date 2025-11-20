class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:id] = user.id
      redirect_to login_path
    else
      message = "Something went wrong with your signup. Try again"
      redirect_to signup_path, notice: message
    end
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
