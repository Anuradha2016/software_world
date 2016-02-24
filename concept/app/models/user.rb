class User < ActiveRecord::Base
  def self.authenticate(email, password)
    #user = find_by_email(email)
  end
end
