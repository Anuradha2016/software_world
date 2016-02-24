class UserController < ApplicationController
def index
  @user=User.all
end  
def new
    @user=User.new
end 
def create
    @user=User.new(params[:user])
    if @user.save
      
      redirect_to :action=>'index', :id =>@user
      
      flash[:notice] =  "Thank you for signing up!"
    else
      render "new"
    end
end
def login_attempt
@user= User.find_by_email_and_password(params[:user][:email],params[:user][:password])
if @user.blank?
 redirect_to :controller=> 'user',:action =>'edit'
  flash[:notice] = "ENTER USERNAME AND PASSWORD"    
else
 flash[:notice] = "You have successfully logged in."     
 render :action => 'home'
end
end
def home
  @user=User.all
  
end
end
