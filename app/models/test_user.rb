class TestUser < ActiveRecord::Base
  
  after_create :send_welcome_email
  
  has_secure_password
  
  validates :email, :presence => true
  
  validates :password, :length => { :minimum => 6 }
  
  has_many :projects
  
 
  private

  def send_welcome_email
    TestUserMailer.welcome_email(self).deliver
  end
  
end
