class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.string :interview_type
      t.string :description

      t.timestamps
    end
  end
end
