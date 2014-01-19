class UserDbsController < ApplicationController
  # GET /user_dbs
  # GET /user_dbs.json
  def index
    @user_dbs = UserDb.where(:idnumber =>1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_dbs }
    end
  end

  # GET /user_dbs/1
  # GET /user_dbs/1.json
  def show
    @user_db = UserDb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_db }
    end
  end

  # GET /user_dbs/new
  # GET /user_dbs/new.json
  def new
    @user_db = UserDb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_db }
    end
  end

  # GET /user_dbs/1/edit
  def edit
    @user_db = UserDb.find(params[:id])
  end

  # POST /user_dbs
  # POST /user_dbs.json
  def create
    @user_db = UserDb.new(params[:user_db])

    respond_to do |format|
      if @user_db.save
        format.html { redirect_to @user_db, notice: 'User db was successfully created.' }
        format.json { render json: @user_db, status: :created, location: @user_db }
      else
        format.html { render action: "new" }
        format.json { render json: @user_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_dbs/1
  # PUT /user_dbs/1.json
  def update
    @user_db = UserDb.find(params[:id])

    respond_to do |format|
      if @user_db.update_attributes(params[:user_db])
        format.html { redirect_to @user_db, notice: 'User db was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_dbs/1
  # DELETE /user_dbs/1.json
  def destroy
    @user_db = UserDb.find(params[:id])
    @user_db.destroy

    respond_to do |format|
      format.html { redirect_to user_dbs_url }
      format.json { head :no_content }
    end
  end
end
