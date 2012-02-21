class User < ActiveRecord::Base
  
  has_secure_password
  
  validates :email, :presence => true
  
  validates :password, :length => { :minimum => 6 }
  
end
