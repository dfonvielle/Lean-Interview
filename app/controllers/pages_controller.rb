class PagesController < ApplicationController
  
  before_filter :user_home, :only => [:home] 
  
  def home
    

    
    @project = Project.new

    respond_to do |format| 
      
      # if session[:guest_id]
      #   notice: "Hey, guest... Do you want to return to your project?"
      # end  
        format.html # new.html.erb
        format.json { render json: @project }        
    end
  
  end
  
  
  

  def about
  end

  def contact
  end

  def verification
    
    @interview = Interview.find(params[:interview_id])
    @project = @interview.project
    @hypothetical_problem = @interview.hypothetical_problem
    @customer_segment_prediction_list = @interview.customer_segment_prediction_list
    
  end

  def hypotheses
    
    @interview = Interview.find(params[:interview_id])
    
  end
  
  def thank_you
    
    @test_user = TestUser.find(params[:test_user_id])
    
  end

end
