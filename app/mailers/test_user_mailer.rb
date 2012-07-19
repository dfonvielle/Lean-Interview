class TestUserMailer < ActionMailer::Base
  default from: "info@alwaysgreater.com"
  
  def welcome_email(test_user)
    mail(:to => test_user.email, :subject => "Always Greater Account Created")
    headers['X-MC-Track'] = "opens, clicks"
    headers['X-MC-GoogleAnalytics'] = "alwaysgreater.com"
    headers['X-MC-Tags'] = "welcome"
  end
  
  def sign_in_email(test_user)
    mail(:to => test_user.email, :subject => "You Just Signed In")
    headers['X-MC-Track'] = "opens, clicks"
    headers['X-MC-GoogleAnalytics'] = "alwaysgreater.com"
    headers['X-MC-Tags'] = "welcome"
  end
  
   
end
