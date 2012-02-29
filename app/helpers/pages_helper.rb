module PagesHelper
 
 
def guest_message 
  if session[:guest_id]
    notice = "Hey, guest... Do you want to return to your project?"
  end
end  
  
end
