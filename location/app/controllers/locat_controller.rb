class LocatController < ApplicationController
def index
    @locat = Locat.all
    @json =  Locat.all.to_gmaps4rails 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @locat }
    end
     end
  def show
    @locat= Locat.find(params[:id])
  
  end
  def display
    
    @locat = Locat.all
   
  end
 def new
    @locat = Locat.new
  end
   def edit
    @locat = Locat.find(params[:id])
  end
  def create
    @locat = Locat.new(params[:locat])
  
    respond_to do |format|
      if @locat.save
        format.html { redirect_to :action => 'edit', :id =>@locat, :notice => 'Location was successfully created.' }
        format.xml  { render :xml => @locat, :status => :created, :locat => @locat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @locat.errors, :status => :unprocessable_entity }
      end
    end
  end
  def update
    @locat = Locat.find(params[:id])

    respond_to do |format|
      if @locat.update_attributes(params[:locat])
        format.html { redirect_to :action => "show", :id =>@locat, :notice => 'Location was successfully updated.' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @locat.errors, :status => :unprocessable_entity }
      end
    end
  end
  def destroy
   @locat=Locat.find(params[:id])
   @locat.destroy
 
   
   redirect_to :action => 'index'
  end
   def there
    @locat = params[:name]
    @loc=Locat.all
    for @l in @loc
      if @l.name != @locat
         flash[:notice]='error'
         
      elsif @l.name == @locat
        @locat =@l
        @json = @locat.to_gmaps4rails

      end
    end
  end
end
