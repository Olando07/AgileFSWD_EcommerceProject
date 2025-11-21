class HomeController < ApplicationController
  def login
  end

  def signup
    @user = User.new
  end

  def index
  end
end
