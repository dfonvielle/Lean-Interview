class CreateCustomerSolutionPredictionLists < ActiveRecord::Migration
  def change
    create_table :customer_solution_prediction_lists do |t|
      t.string :existing_solution_1_prediction
      t.string :existing_solution_2_prediction
      t.string :existing_solution_3_prediction
      t.integer :interview_id
      t.integer :project_id

      t.timestamps
    end
  end
end
