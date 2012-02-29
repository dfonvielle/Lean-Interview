class CreateHypotheticalProblems < ActiveRecord::Migration
  def change
    create_table :hypothetical_problems do |t|
      t.string :description
      t.string :predicted_customer_segment_1
      t.string :predicted_customer_segment_2
      t.string :predicted_customer_segment_3
      t.string :predicted_solution_1
      t.string :predicted_solution_2
      t.string :predicted_solution_3
      t.boolean :no_need_for_solution
      t.boolean :nice_to_have_solution
      t.boolean :must_have_solution
      t.integer :interview_id
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
