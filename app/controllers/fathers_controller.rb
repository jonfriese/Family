class FathersController < ApplicationController
  # GET /fathers
  # GET /fathers.json
  def index
    @fathers = Father.scoped
    @father = Father.new
  end


  def show
    @father = Father.find(params[:id])
  end


  def new
    @father = Father.new(:parent_id => params[:parent_id])
  end


  def create
    @father = Father.new(params[:father])
    if @father.save
        redirect_to fathers_path
    else
        render :new
    end
  end


  def destroy
    @father = Father.find(params[:id])
    @father.destroy
    redirect_to fathers_url
  end
end
