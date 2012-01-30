class CreateRelatedIssues < ActiveRecord::Migration
  def change
    create_table :known_issues_steps, :id => false do |t|
      t.integer :known_issue_id
      t.integer :step_id

      t.timestamps
    end
  end
end
