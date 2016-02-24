class ReviewController < ApplicationController
  def index
  @review=Review.all
   
  end
   def new
    @review=Review.new
   # redirect_to :action => 'index', :id =>@review
  end
  def create
    @mat = Review.new(params[:mat])
   # if @review and @review.authenticate(params[:password])
     #  redirect_to :action => show
    # else
        #redirect_to :action => index,alert:"invalid"
    # end
    if @mat.save
     # redirect_to :action => 'edit', :id => @mat
        redirect_to  :action => 'show', :id => @mat
    else
      render 'new'
    end
  end
  def show
    @mat= Review.find(params[:id])
  end
end
