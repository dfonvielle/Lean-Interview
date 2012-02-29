module HypotheticalProblemsHelper
  
  
  def initial_problem_message
    "First, we tell us how #{@project.name} is going to change the way people do things..."
  end
  
  
  
  def hypothetical_problem_messages
    
    if @hypothetical_problems.count < 1
      
      "You have no hypothetical problems so far..." 
       
    elsif @hypothetical_problems.count == 1
      
      "You have 1 hypothetical problem... Two more to go..."
      
    elsif @hypothetical_problems.count == 2
      
      "You have 2 hypothetical problems... 1 more to go..."
      
    end    
      
  end
  
  
  
  def list_hypothetical_problems
    
    
  end
  
  
  
end
