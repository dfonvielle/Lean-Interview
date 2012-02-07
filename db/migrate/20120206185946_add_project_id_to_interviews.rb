class AddProjectIdToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :project_id, :integer
  end
end
