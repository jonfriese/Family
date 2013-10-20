class SonsController < ApplicationController

  before_filter :load_father
  # GET /sons
  # GET /sons.json
  def index
    @son = @father.sons.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sons }
    end
  end

  # GET /sons/1
  # GET /sons/1.json
  def show
    @son = @father.sons.find(params[:id])
  end

  # GET /sons/new
  # GET /sons/new.json
  def new
    @son = @father.sons.new
  end

  # GET /sons/1/edit
  def edit
    @son = @father.sons.find(params[:id])
  end

  # POST /sons
  # POST /sons.json
  def create
    @son = @father.sons.new(params[:son])
    @son.father_id = @father.id

    respond_to do |format|
      if @son.update_attributes(params[:father])
        format.html { redirect_to [@father, @son], notice: 'son was successfully created!!!' }
        format.json { render json: @son, status: :created, location: @son }
      else
        format.html { render action: "new" }
        format.json { render json: @son.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sons/1
  # PUT /sons/1.json
  def update
    @son = @father.sons.find(params[:id])

    respond_to do |format|
      if @son.update_attributes(params[:son])
        format.html { redirect_to father_sons_path, notice: 'son was successfully updated!!!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @son.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sons/1
  # DELETE /sons/1.json
  def destroy
    @son = @father.sons.find(params[:id])
    @son.destroy

    respond_to do |format|
      format.html { redirect_to father_sons_url }
    end
  end

  private

  def load_father
    @father = Father.find(params[:father_id])
  end
end
