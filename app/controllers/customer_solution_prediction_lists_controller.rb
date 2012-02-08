class CustomerSolutionPredictionListsController < ApplicationController
  # GET /customer_solution_prediction_lists
  # GET /customer_solution_prediction_lists.json
  def index
    @customer_solution_prediction_lists = CustomerSolutionPredictionList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_solution_prediction_lists }
    end
  end

  # GET /customer_solution_prediction_lists/1
  # GET /customer_solution_prediction_lists/1.json
  def show
    @customer_solution_prediction_list = CustomerSolutionPredictionList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_solution_prediction_list }
    end
  end

  # GET /customer_solution_prediction_lists/new
  # GET /customer_solution_prediction_lists/new.json
  def new
    @interview = Interview.find(params[:interview_id])
    @customer_solution_prediction_list = CustomerSolutionPredictionList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_solution_prediction_list }
    end
  end

  # GET /customer_solution_prediction_lists/1/edit
  def edit
    @interview = Interview.find(params[:interview_id])
    @customer_solution_prediction_list = @interview.customer_solution_prediction_list
  end

  # POST /customer_solution_prediction_lists
  # POST /customer_solution_prediction_lists.json
  def create
    @customer_solution_prediction_list = CustomerSolutionPredictionList.new(params[:customer_solution_prediction_list])

    respond_to do |format|
      if @customer_solution_prediction_list.save
        format.html { redirect_to pages_verification_path(:interview_id => @customer_solution_prediction_list.interview.id), notice: 'Customer solution prediction list was successfully created.' }
        format.json { render json: @customer_solution_prediction_list, status: :created, location: @customer_solution_prediction_list }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_solution_prediction_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_solution_prediction_lists/1
  # PUT /customer_solution_prediction_lists/1.json
  def update
    @customer_solution_prediction_list = CustomerSolutionPredictionList.find(params[:id])

    respond_to do |format|
      if @customer_solution_prediction_list.update_attributes(params[:customer_solution_prediction_list])
        format.html { redirect_to @customer_solution_prediction_list, notice: 'Customer solution prediction list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_solution_prediction_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_solution_prediction_lists/1
  # DELETE /customer_solution_prediction_lists/1.json
  def destroy
    @customer_solution_prediction_list = CustomerSolutionPredictionList.find(params[:id])
    @customer_solution_prediction_list.destroy

    respond_to do |format|
      format.html { redirect_to customer_solution_prediction_lists_url }
      format.json { head :ok }
    end
  end
end
