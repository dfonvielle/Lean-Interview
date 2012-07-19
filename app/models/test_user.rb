class TestUser < ActiveRecord::Base
  
  has_secure_password
  
  validates :email, :presence => true
  
  validates :password, :length => { :minimum => 6 }
  
  has_many :projects
  
end
