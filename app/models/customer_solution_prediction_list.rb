class CustomerSolutionPredictionList < ActiveRecord::Base
  
  belongs_to :interview
  
  belongs_to :project
  
end
