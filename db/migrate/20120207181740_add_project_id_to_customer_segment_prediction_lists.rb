class AddProjectIdToCustomerSegmentPredictionLists < ActiveRecord::Migration
  def change
    add_column :customer_segment_prediction_lists, :project_id, :integer
  end
end
