class ProblemPredictionList < ActiveRecord::Base
  
  belongs_to :interview
  
  belongs_to :project
  
end
