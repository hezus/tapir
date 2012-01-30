class CreateKnownIssues < ActiveRecord::Migration
  def change
    create_table :known_issues do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
