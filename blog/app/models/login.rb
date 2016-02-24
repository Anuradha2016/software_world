class Login < ActiveRecord::Base
   validates :tittle, presence: true,
                    length: { minimum: 5 }               
                   
end
 