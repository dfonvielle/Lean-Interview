class HypotheticalProblemsController < ApplicationController
  # GET /hypothetical_problems
  # GET /hypothetical_problems.json
  def index
    
    @interview = Interview.find(params[:interview_id])
    @project = @interview.project
    @hypothetical_problems = @interview.hypothetical_problems.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hypothetical_problems }
    end
  end

  # GET /hypothetical_problems/1
  # GET /hypothetical_problems/1.json
  def show
    @hypothetical_problem = HypotheticalProblem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hypothetical_problem }
    end
  end

  # GET /hypothetical_problems/new
  # GET /hypothetical_problems/new.json
  def new
    
    @interview = Interview.find(params[:interview_id])
    @project = @interview.project
    
    @hypothetical_problem = HypotheticalProblem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hypothetical_problem }
    end
  end

  # GET /hypothetical_problems/1/edit
  def edit
    @hypothetical_problem = HypotheticalProblem.find(params[:id])
  end

  # POST /hypothetical_problems
  # POST /hypothetical_problems.json
  def create
    @hypothetical_problem = HypotheticalProblem.new(params[:hypothetical_problem])
    @interview = @hypothetical_problem.interview

    respond_to do |format|
      if @hypothetical_problem.save
        format.html { redirect_to new_interview_customer_segment_prediction_list_path(@interview) }
        format.json { render json: @hypothetical_problem, status: :created, location: @hypothetical_problem }
      else
        format.html { render action: "new" }
        format.json { render json: @hypothetical_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hypothetical_problems/1
  # PUT /hypothetical_problems/1.json
  def update
    @hypothetical_problem = HypotheticalProblem.find(params[:id])

    respond_to do |format|
      if @hypothetical_problem.update_attributes(params[:hypothetical_problem])
        format.html { redirect_to @hypothetical_problem, notice: 'Hypothetical problem was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hypothetical_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hypothetical_problems/1
  # DELETE /hypothetical_problems/1.json
  def destroy
    @hypothetical_problem = HypotheticalProblem.find(params[:id])
    @hypothetical_problem.destroy

    respond_to do |format|
      format.html { redirect_to hypothetical_problems_url }
      format.json { head :ok }
    end
  end
end
