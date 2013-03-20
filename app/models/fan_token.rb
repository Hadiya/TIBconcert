class FanToken < ActiveRecord::Base
  attr_accessible :remember_token, :user_email  
   
   def self.fantoken(token,mail)
   	band= FanToken.new
    band.user_email =  mail
    band.remember_token = token 
    band.save!
   end

end
