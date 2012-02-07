class ProblemPredictionListsController < ApplicationController
  # GET /problem_prediction_lists
  # GET /problem_prediction_lists.json
  def index
    @problem_prediction_lists = ProblemPredictionList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @problem_prediction_lists }
    end
  end

  # GET /problem_prediction_lists/1
  # GET /problem_prediction_lists/1.json
  def show
    @problem_prediction_list = ProblemPredictionList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @problem_prediction_list }
    end
  end

  # GET /problem_prediction_lists/new
  # GET /problem_prediction_lists/new.json
  def new
    @problem_prediction_list = ProblemPredictionList.new
    # @interview = Interview.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @problem_prediction_list }
    end
  end

  # GET /problem_prediction_lists/1/edit
  def edit
    @problem_prediction_list = ProblemPredictionList.find(params[:id])
  end

  # POST /problem_prediction_lists
  # POST /problem_prediction_lists.json
  def create
    @problem_prediction_list = ProblemPredictionList.new(params[:problem_prediction_list])

    respond_to do |format|
      if @problem_prediction_list.save
        format.html { redirect_to @problem_prediction_list, notice: 'Problem prediction list was successfully created.' }
        format.json { render json: @problem_prediction_list, status: :created, location: @problem_prediction_list }
      else
        format.html { render action: "new" }
        format.json { render json: @problem_prediction_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /problem_prediction_lists/1
  # PUT /problem_prediction_lists/1.json
  def update
    @problem_prediction_list = ProblemPredictionList.find(params[:id])

    respond_to do |format|
      if @problem_prediction_list.update_attributes(params[:problem_prediction_list])
        format.html { redirect_to @problem_prediction_list, notice: 'Problem prediction list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @problem_prediction_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problem_prediction_lists/1
  # DELETE /problem_prediction_lists/1.json
  def destroy
    @problem_prediction_list = ProblemPredictionList.find(params[:id])
    @problem_prediction_list.destroy

    respond_to do |format|
      format.html { redirect_to problem_prediction_lists_url }
      format.json { head :ok }
    end
  end
end
