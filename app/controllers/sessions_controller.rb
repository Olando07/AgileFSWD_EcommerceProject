class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:name])  
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Logged In successfully"
    else
      flash.now[:alert] = "Something went wrong. Invalid credentials."
      render "home/login", status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end