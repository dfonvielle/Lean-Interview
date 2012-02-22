class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?, :current_user
  
  def logged_in?
    session[:user_id]
  end
 
  def current_user
    if session[:user_id]
      return User.find(session[:user_id])
    end
  end
  
  def require_user
    if session[:user_id] == nil
      redirect_to root_url, :notice => "You're not signed in."
    end
  end
  
end
