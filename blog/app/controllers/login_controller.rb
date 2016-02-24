class LoginController < ApplicationController
  def index
    @login=Login.all
  end
  def new
    @login = Login.new
  end
   def show
    @login= Login.find(params[:id])
  end
  def create
      @login = Login.new(params[:login])
  if @login.save
    redirect_to :action => 'edit', :id =>@login
  else
    render 'new'
  end
  end
  def destroy
    @login=Login.first
    @login.destroy
     redirect_to :action => 'index', :id =>@login
  end
  def edit
    @login = Login.find(params[:id])
  end
  
  def update
    @login = Login.find(params[:id])
     @login.attributes = params[:login]
if @login.save!
      redirect_to  :action => 'show', :id =>@login
    else
      render 'edit'
    end
  end
  
end
