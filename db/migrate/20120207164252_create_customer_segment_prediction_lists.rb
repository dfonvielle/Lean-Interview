class CreateCustomerSegmentPredictionLists < ActiveRecord::Migration
  def change
    create_table :customer_segment_prediction_lists do |t|
      t.string :customer_segment_1_prediction
      t.string :customer_segment_2_prediction
      t.string :customer_segment_3_prediction
      t.integer :interview_id

      t.timestamps
    end
  end
end
