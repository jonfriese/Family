class FathersController < ApplicationController
  # GET /fathers
  # GET /fathers.json
  def index
    @fathers = Father.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fathers }
    end
  end

  # GET /fathers/1
  # GET /fathers/1.json
  def show
    @father = Father.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @father }
    end
  end

  # GET /fathers/new
  # GET /fathers/new.json
  def new
    @father = Father.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @father }
    end
  end

  # GET /fathers/1/edit
  def edit
    @father = Father.find(params[:id])
  end

  # POST /fathers
  # POST /fathers.json
  def create
    @father = Father.new(params[:father])

    respond_to do |format|
      if @father.save
        format.html { redirect_to @father, notice: 'Father was successfully created.' }
        format.json { render json: @father, status: :created, location: @father }
      else
        format.html { render action: "new" }
        format.json { render json: @father.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fathers/1
  # PUT /fathers/1.json
  def update
    @father = Father.find(params[:id])

    respond_to do |format|
      if @father.update_attributes(params[:father])
        format.html { redirect_to @father, notice: 'Father was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @father.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fathers/1
  # DELETE /fathers/1.json
  def destroy
    @father = Father.find(params[:id])
    @father.destroy

    respond_to do |format|
      format.html { redirect_to fathers_url }
      format.json { head :no_content }
    end
  end
end
