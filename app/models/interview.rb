class Interview < ActiveRecord::Base
  
  belongs_to :project
  
  has_many :problem_prediction_lists
  
end
