class CreateInterviewResponses < ActiveRecord::Migration
  def change
    create_table :interview_responses do |t|
      t.integer :interview_id
      t.integer :project_id
      t.integer :contact_id
      t.boolean :customer_solution_1_for_prob_1
      t.boolean :customer_solution_2_for_prob_1
      t.boolean :customer_solution_3_for_prob_1
      t.string :other_solutions_for_prob_1
      t.string :solution_importance_for_prob_1
      t.boolean :customer_solution_1_for_prob_2
      t.boolean :customer_solution_2_for_prob_2
      t.boolean :customer_solution_3_for_prob_2
      t.string :other_solutions_for_prob_2
      t.string :solution_importance_for_prob_2
      t.boolean :customer_solution_1_for_prob_3
      t.boolean :customer_solution_2_for_prob_3
      t.boolean :customer_solution_3_for_prob_3
      t.string :other_solutions_for_prob_3
      t.string :solution_importance_for_prob_3
      t.string :problem_1_ranking
      t.string :problem_2_ranking
      t.string :problem_3_ranking
      t.boolean :customer_segment_1
      t.boolean :customer_segment_2
      t.boolean :customer_segment_3
      t.string :other_customer_segments
      t.text :additional_notes
      t.string :possible_early_adopter

      t.timestamps
    end
  end
end
