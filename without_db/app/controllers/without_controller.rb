class WithoutController < ApplicationController
  def new
   render :action =>'new'
    
  end
 def edit
   render :action =>'edit'
    
 end
def paint
   render :action =>'paint'
    
 end
def slide
render :action => 'slide'
end
def jasc
  render :action => 'jasc'
end
def orderfile
  render :action => 'orderfile'
end
def leave
  render :action => 'leave'
end
def leaf
  render :action => 'leaf'
end

def slider
render :action => 'slider'
end
end
