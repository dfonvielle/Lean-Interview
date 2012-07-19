class SessionsController < ApplicationController
  
  def new
  end


  def create
    
    test_user = TestUser.find_by_email(params[:email])
    if test_user && test_user.authenticate(params[:password])
      session[:user_id] = test_user.id
      TestUserMailer.sign_in_email(test_user).deliver
      redirect_to test_user_url(test_user), :notice => "Welcome back!"
    else
      flash[:notice] = "Please try again."
      render :new
    end
    
  end
  
  

  def destroy
    
    reset_session
    redirect_to root_url, :notice => "You have signed out."
    
  end


end
