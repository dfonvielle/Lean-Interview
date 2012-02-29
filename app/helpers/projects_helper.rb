module ProjectsHelper
  
  def show_project_or_choice
    if session[:user_id]
      "You're a user! Here is your particular project info!"    
    else
      "You're not a signed in user... Here's a choice of interview options."
    end
  
  end
  
  
end
