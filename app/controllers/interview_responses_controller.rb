class InterviewResponsesController < ApplicationController
  # GET /interview_responses
  # GET /interview_responses.json
  def index
    @interview_responses = InterviewResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interview_responses }
    end
  end

  # GET /interview_responses/1
  # GET /interview_responses/1.json
  def show
    @interview_response = InterviewResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interview_response }
    end
  end

  # GET /interview_responses/new
  # GET /interview_responses/new.json
  def new
    
    @interview = Interview.find(params[:interview_id])
    @project = @interview.project
    @interview_response = InterviewResponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interview_response }
    end
  end

  # GET /interview_responses/1/edit
  def edit
    @interview_response = InterviewResponse.find(params[:id])
  end

  # POST /interview_responses
  # POST /interview_responses.json
  def create
    @interview_response = InterviewResponse.new(params[:interview_response])

    respond_to do |format|
      if @interview_response.save
        format.html { redirect_to @interview_response, notice: 'Interview response was successfully created.' }
        format.json { render json: @interview_response, status: :created, location: @interview_response }
      else
        format.html { render action: "new" }
        format.json { render json: @interview_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interview_responses/1
  # PUT /interview_responses/1.json
  def update
    @interview_response = InterviewResponse.find(params[:id])

    respond_to do |format|
      if @interview_response.update_attributes(params[:interview_response])
        format.html { redirect_to @interview_response, notice: 'Interview response was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @interview_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_responses/1
  # DELETE /interview_responses/1.json
  def destroy
    @interview_response = InterviewResponse.find(params[:id])
    @interview_response.destroy

    respond_to do |format|
      format.html { redirect_to interview_responses_url }
      format.json { head :ok }
    end
  end
end
