class ChangeAdditionalNotesFromInterviewResponses < ActiveRecord::Migration
  def change
    change_column :interview_responses, :additional_notes, :string
  end
end
