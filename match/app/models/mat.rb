class Mat < ActiveRecord::Base
 	#attr_accessible :email, :password, :password_confirmation
  
  #attr_accessor :password
  #before_save :encrypt_password
  
  #validates_confirmation_of :password
  #alidates_presence_of :password, :on => :create
  #validates_presence_of :email
 # validates_uniqueness_of :email
  
  # def self.authenticate(email, password)
    # user = find_by_email(email)
    # if user && user.password == BCrypt::Engine.hash_secret(password, user.password)
      # user
    # else
      # nil
    # end
  # end
  
#   
  # def encrypt_password
    # if password.present?
#       
      # self.password= BCrypt::Engine.hash_secret(password)
    # end
  # end
end
