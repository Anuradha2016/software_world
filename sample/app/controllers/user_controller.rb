class UserController < ApplicationController
  def index
  
  end
   
 

def load_states
  @states = State.find(:all,:conditions => ['country_id = ? ',params[:country]])
  
end
def load_cities
  
  @cities = City.find(:all, :conditions => ['state_id = ? ',params[:state]])
  
end
end
