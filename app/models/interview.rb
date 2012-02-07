class Interview < ActiveRecord::Base
  
  belongs_to :project
  
  has_one :problem_prediction_list
  
end
