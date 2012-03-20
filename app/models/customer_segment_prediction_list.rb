class CustomerSegmentPredictionList < ActiveRecord::Base
            
  validates :customer_segment_1_prediction, :customer_segment_2_prediction, :customer_segment_3_prediction, :presence => true
  
  belongs_to :interview
  
  belongs_to :project
  
end
