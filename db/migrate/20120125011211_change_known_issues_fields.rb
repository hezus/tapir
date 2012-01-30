class ChangeKnownIssuesFields < ActiveRecord::Migration
  def change
    create_table :known_issues_rest_resources, :id => false do |t|
      t.integer :known_issue_id
      t.integer :rest_resource_id

      t.timestamps
    end
  end
end
