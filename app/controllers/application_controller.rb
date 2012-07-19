class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?, :current_user
  
  def logged_in?
    session[:user_id]
  end
 
  def current_user
    if session[:user_id]
      return TestUser.find(session[:user_id])
    end
  end
  
  def require_user
    if session[:user_id] == nil
      redirect_to root_url, :notice => "You're not signed in."
    end
  end
  
  def user_home
    if session[:user_id]
      redirect_to user_url(current_user), :notice => "Home, sweet home."
    end
  end
  
end
