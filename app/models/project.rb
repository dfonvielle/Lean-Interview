class Project < ActiveRecord::Base
  
  has_many :interviews
  
  has_many :problem_prediction_lists
  
end
