class HypotheticalProblem < ActiveRecord::Base
  
  belongs_to :interview
  
  validates :interview_id, :description_1, :predicted_solution_1_for_prob_1, :predicted_solution_2_for_prob_1, :predicted_solution_3_for_prob_1,
            :solution_importance_1, :presence => true
  
  validates :interview_id, :description_2, :predicted_solution_1_for_prob_2, :predicted_solution_2_for_prob_2, :predicted_solution_3_for_prob_3,
            :solution_importance_2, :presence => true
            
  validates :interview_id, :description_3, :predicted_solution_1_for_prob_3, :predicted_solution_2_for_prob_3, :predicted_solution_3_for_prob_3,
            :solution_importance_3, :presence => true
  
 
  validate :problem_2_fields, :problem_3_fields
  
  def problem_2_fields
    if !description_2.blank? || !predicted_solution_1_for_prob_2.blank? || !solution_importance_2.blank?
      if description_2.blank? || predicted_solution_1_for_prob_2.blank? || solution_importance_2.blank?
        errors[:base] << "2nd biggest problem: make sure you've identified the problem, a current solution, and ranked its importance" 
      end
    end
  end
  
  def problem_3_fields
    if !description_3.blank? || !predicted_solution_1_for_prob_3.blank? || !solution_importance_3.blank?
      if description_3.blank? || predicted_solution_1_for_prob_3.blank? || solution_importance_3.blank?
        errors[:base] << "3rd biggest problem: make sure you've identified the problem, a current solution, and ranked its importance" 
      end
    end
  end 
  

  
end
