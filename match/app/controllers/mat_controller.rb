class MatController < ApplicationController
 def index
    @mat=Mat.all
  end

  def new
    @mat=Mat.new
  end

  def show
    @mat = Mat.find(params[:id])
  end

  def create
    @mat = Mat.new(params[:mat])
    if @mat.save!
      redirect_to :action => 'edit', :id => @mat
    else
      render 'new'
    end
  end

  def edit

    @mat = Mat.find(params[:id])
  end

  def update
    @mat = Mat.find(params[:id])
    @mat.attributes = params[:mat]
    if @mat.save!
      redirect_to  :action => 'show', :id => @mat
    else
      render 'edit'
    end
  end
  
end