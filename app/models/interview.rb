class Interview < ActiveRecord::Base
  
  validates :name, :presence => true
  
  belongs_to :project
  
  has_one :customer_problem_prediction_list
  
  has_one :customer_segment_prediction_list
  
  has_one :customer_solution_prediction_list
  
  has_one :hypothetical_problem
  
end
