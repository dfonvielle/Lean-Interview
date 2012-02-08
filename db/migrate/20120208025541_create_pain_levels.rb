class CreatePainLevels < ActiveRecord::Migration
  def change
    create_table :pain_levels do |t|
      t.string :value

      t.timestamps
    end
  end
end
