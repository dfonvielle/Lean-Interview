class AddFieldsToHypotheticalProblems < ActiveRecord::Migration
  def change
    add_column :hypothetical_problems, :description_1, :string
    add_column :hypothetical_problems, :predicted_solution_1_for_prob_1, :string
    add_column :hypothetical_problems, :predicted_solution_2_for_prob_1, :string
    add_column :hypothetical_problems, :predicted_solution_3_for_prob_1, :string
    add_column :hypothetical_problems, :solution_importance_1, :string 
    add_column :hypothetical_problems, :description_2, :string
    add_column :hypothetical_problems, :predicted_solution_1_for_prob_2, :string
    add_column :hypothetical_problems, :predicted_solution_2_for_prob_2, :string
    add_column :hypothetical_problems, :predicted_solution_3_for_prob_2, :string
    add_column :hypothetical_problems, :solution_importance_2, :string
    add_column :hypothetical_problems, :description_3, :string
    add_column :hypothetical_problems, :predicted_solution_1_for_prob_3, :string
    add_column :hypothetical_problems, :predicted_solution_2_for_prob_3, :string
    add_column :hypothetical_problems, :predicted_solution_3_for_prob_3, :string
    add_column :hypothetical_problems, :solution_importance_3, :string
    remove_column :hypothetical_problems, :predicted_customer_segment_2, :string
    remove_column :hypothetical_problems, :predicted_customer_segment_3, :string
    remove_column :hypothetical_problems, :no_need_for_solution, :boolean
    remove_column :hypothetical_problems, :nice_to_have_solution, :boolean
    remove_column :hypothetical_problems, :must_have_solution, :boolean
  end
end




