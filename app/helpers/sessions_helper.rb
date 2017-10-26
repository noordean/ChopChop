module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  def save_search_keyword(keyword)
    session[:search_keyword] = keyword
  end
end
