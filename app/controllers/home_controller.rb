class HomeController < ApplicationController
  def index
    @user = User.new
    @user_id = session[:user_id]
    @search_keyword = session[:search_keyword]
    if @user_id
      @current_user = User.find_by(id: session[:user_id]).name
      @comments = Comment.order(created_at: :DESC).all
    else
      @current_user = nil
    end
    if @search_keyword
      if ['breakfast', 'lunch', 'dinner', 'dessert', 'fruit'].include? @search_keyword
        session.delete(:search_keyword)
        return @items = Item.where('category LIKE ?', "%#{@search_keyword}%")
      end
      if !Item.where('name LIKE ?', "%#{@search_keyword}%").empty?
        @items = Item.where('name LIKE ?', "%#{@search_keyword}%")
        session.delete(:search_keyword)
      else
       @items = Item.all         
      end
    else
      @items = Item.all
    end
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
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
  end
end
