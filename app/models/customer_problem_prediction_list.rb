class CustomerProblemPredictionList < ActiveRecord::Base
  
  validates :problem_1_prediction, :problem_1_pain_level_prediction, :problem_2_prediction, :problem_2_pain_level_prediction, 
            :problem_3_prediction, :problem_3_pain_level_prediction, :presence => true
  
  belongs_to :interview
  
  belongs_to :project
  
  
end
