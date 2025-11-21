class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to login_path, notice: "Account created"
    else
      flash.now[:alert] = "Failed to create account. Check your input."
      render "home/signup", status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email, :street_address, :province_id)
  end
end
