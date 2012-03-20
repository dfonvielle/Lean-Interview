class AddSolutionImportanceToHypotheticalProblems < ActiveRecord::Migration
  def change
    add_column :hypothetical_problems, :solution_importance, :string
  end
  
  def up
    remove_column :hypothetical_problems, :predicted_customer_segment_1 
  end 
  
  def down
    add_column :hypothetical_problems, :predicted_customer_segment_1, :string 
  end
  
  
end
