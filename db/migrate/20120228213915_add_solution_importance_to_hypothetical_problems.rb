class AddSolutionImportanceToHypotheticalProblems < ActiveRecord::Migration
  def change
    add_column :hypothetical_problems, :solution_importance, :string
    remove_column :hypothetical_problems, :predicted_customer_segment_1, :string
  end
end
