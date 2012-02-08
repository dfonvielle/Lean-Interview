class PagesController < ApplicationController
  
  def home
    
    @project = Project.new

    respond_to do |format|
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
    
  end

  def hypotheses
    
    @interview = Interview.find(params[:interview_id])
    
  end

end
