class HomeController < ApplicationController
  def index
    @user = User.new
  end
  def signup
    @user = User.new(signup_param)
    if @user.save
      flash[:success] = "Registration successful!"
      redirect_to root_path
    else
      render 'index'
    end
  end
  def signup_refresh
    redirect_to root_path
  end
  private
  def signup_param
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
