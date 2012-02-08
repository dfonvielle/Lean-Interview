class CustomerSolutionPredictionList < ActiveRecord::Base
  
  validates :existing_solution_1_prediction, :existing_solution_2_prediction, :existing_solution_3_prediction, :presence => true
  
  belongs_to :interview
  
  belongs_to :project
  
end
