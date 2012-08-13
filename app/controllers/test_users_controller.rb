class TestUsersController < ApplicationController
  # GET /test_users
  # GET /test_users.json
  def index
    @test_users = TestUser.all
    @chart = create_chart

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_users }
    end
  end

  # GET /test_users/1
  # GET /test_users/1.json
  def show
    @test_user = current_user

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_user }
    end
  end

  # GET /test_users/new
  # GET /test_users/new.json
  def new
    @test_user = TestUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_user }
    end
  end

  # GET /test_users/1/edit
  def edit
    @test_user = TestUser.find(params[:id])
  end

  # POST /test_users
  # POST /test_users.json
  def create
    @test_user = TestUser.new(params[:test_user])

    respond_to do |format|
      if @test_user.save
        format.html { redirect_to pages_thank_you_path(test_user_id: @test_user.id), notice: 'Thanks for signing up!' }
        format.json { render json: @test_user, status: :created, location: @test_user }
      else
        format.html { render action: "new" }
        format.json { render json: @test_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_users/1
  # PUT /test_users/1.json
  def update
    @test_user = TestUser.find(params[:id])

    respond_to do |format|
      if @test_user.update_attributes(params[:test_user])
        format.html { redirect_to @test_user, notice: 'Test user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_users/1
  # DELETE /test_users/1.json
  def destroy
    @test_user = TestUser.find(params[:id])
    @test_user.destroy

    respond_to do |format|
      format.html { redirect_to test_users_url }
      format.json { head :ok }
    end
  end
  
  private
  
  def create_chart
    # Example from Gem Website
    data_table = GoogleVisualr::DataTable.new
    # Add Column Headers 
    data_table.new_column('string', 'Year' ) 
    data_table.new_column('number', 'Sales') 
    data_table.new_column('number', 'Expenses') 
    
    # Add Rows and Values 
    data_table.add_rows([ 
      ['2004', 1000, 400], 
      ['2005', 1170, 460], 
      ['2006', 660, 1120], 
      ['2007', 1030, 540] 
    ])
    
    option = { width: 700, height: 600, title: 'Company Performance' }
    @chart = GoogleVisualr::Interactive::AreaChart.new(data_table, option)
    
    # CODE FROM STARTUP TUTORIAL
    
    # users_by_day = TestUser.group("DATE(created_at)").count
    # data_table = GoogleVisualr::DataTable.new
    # data_table.new_column('date')
    # data_table.new_column('number')
    # users_by_day.each do |day|
    #   data_table.add_row([ Date.parse(day[0]), day[1]])
    # end
    # option = { width: 700, height: 240, title: 'Company Performance' }
    # @chart = GoogleVisualr::Interactive::AnnotatedTimeLine.new(data_table, option)
  end
  
  
end
