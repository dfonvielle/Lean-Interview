class TestUsersController < ApplicationController
  # GET /test_users
  # GET /test_users.json
  def index
    @test_users = TestUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_users }
    end
  end

  # GET /test_users/1
  # GET /test_users/1.json
  def show
    @test_user = TestUser.find(params[:id])

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
        format.html { redirect_to @test_user, notice: 'Test user was successfully created.' }
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
end
