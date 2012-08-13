class TestUser < ActiveRecord::Base
  
  after_create :send_welcome_email
  
  after_create :add_user_to_mailchimp unless Rails.env.test?
  
  before_destroy :remove_user_from_mailchimp unless Rails.env.test?
  
  has_secure_password
  
  validates :email, :presence => true
  
  validates :password, :length => { :minimum => 6 }
  
  has_many :projects
  
 
  private
  

  def send_welcome_email
    TestUserMailer.welcome_email(self).deliver
  end
  
  
  def add_user_to_mailchimp
    unless self.email.include?('@example.com')
      mailchimp = Hominid::API.new(ENV["MAILCHIMP_API_KEY"])
      list_id = mailchimp.find_list_id_by_name "Some Newsletter"
      info = { }
      result = mailchimp.list_subscribe(list_id, self.email, info, 'html', true, true, false, true)
      Rails.logger.info("MAILCHIMP SUBSCRIBE: result #{result.inspect} for #{self.email}")
    end
  end
  
  
  def remove_user_from_mailchimp
    unless self.email.include?('@example.com')
      mailchimp = Hominid::API.new(ENV["MAILCHIMP_API_KEY"])
      list_id = mailchimp.find_list_id_by_name "Some Newsletter"
      result = mailchimp.list_unsubscribe(list_id, self.email, true, false, true)  
      Rails.logger.info("MAILCHIMP UNSUBSCRIBE: result #{result.inspect} for #{self.email}")
    end
  end
  
end
