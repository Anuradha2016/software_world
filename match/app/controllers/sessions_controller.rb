class SessionsController < ApplicationController
   def index
     
  end
  def create
    #raise params.inspect
    @a=Student.new
    @a.name= params[:std][:name]
     @a.username= params[:std][:user]
      @a.password= params[:std][:pass]
       @a.login= params[:std][:lgn]
         @a.email= params[:std][:em]
           @a.save
           redirect_to :action => 'index'
           @c=Address.new
           @c.city= params[:std][:city]
             @c.student_id= @a.id
             @c.save
  end
  def show
    b=Student.find(:all,:joins=> "as students inner join addresses as ad on students.id=ad.student_id",
                    :select=> 'students.name,students.id,students.username,students.password,students.login,students.email,ad.city')
    
  end
  def destroy
    #raise params.inspect
    @d=Student.find_by_id(params[:id])
    #@f=Address.find_by_student_id(@d.id)
    @d.destroy
    #@f.destroy
      redirect_to :action => 'show'
  end
end
