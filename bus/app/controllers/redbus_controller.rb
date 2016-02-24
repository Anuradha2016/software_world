#redbus_controller.rb
class RedbusController < ApplicationController
 def index

 
  end
 def show
   @redbus = Redbus.all
 end
  def new
    @redbus= Redbus.new
      auto_complete_for @redbus, :two
  end

  def create
    @redbus= Redbus.find_by_two(params[:redbus][:two])
    @redbus = Redbus.new(params[:redbus])
    if @redbus.save!
      redirect_to :action => 'index', :id => @redbus
    else
      render 'index'
    end
  end
   
end
