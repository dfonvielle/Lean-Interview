class Project < ActiveRecord::Base
  
  validates :name, :presence => true
  
  has_many :interviews
  
  has_many :customer_problem_prediction_lists
  
  has_many :customer_solution_prediction_lists
  
end
