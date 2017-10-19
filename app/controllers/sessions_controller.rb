class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def login
    user = User.find_by(email: login_param[:email])
    if user && user.authenticate(login_param[:password])
      log_in user
      redirect_to user
    else
      flash[:danger] = "Incorrect email/password combination"
      redirect_to root_path
    end
  end
  def logout
    session.delete(:user_id)
    redirect_to root_path
  end
  private
  def login_param
    params.require(:session).permit(:email, :password)
  end
end
