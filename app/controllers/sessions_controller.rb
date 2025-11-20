class SessionsController < ApplicationController
  def create
    @user = User.find_by(params[:username])  
    if !!@user && @user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to root_path, notice: "Logged In successfully"
    else
      message = "Something went wrong. Ensure that your password and username are correct."
      redirect_to login_path, notice: message
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end
end