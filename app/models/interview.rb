class Interview < ActiveRecord::Base
  
  belongs_to :project
  
  has_many :problem_prediction_lists
  
  has_many :customer_segment_prediction_lists
  
end
