class CreateCustomerProblemPredictionLists < ActiveRecord::Migration
  def change
    create_table :customer_problem_prediction_lists do |t|
      t.string :problem_1_prediction
      t.string :problem_1_pain_level_prediction
      t.string :problem_2_prediction
      t.string :problem_2_pain_level_prediction
      t.string :problem_3_prediction
      t.string :problem_3_pain_level_prediction
      t.integer :interview_id
      t.integer :project_id

      t.timestamps
    end
  end
end
