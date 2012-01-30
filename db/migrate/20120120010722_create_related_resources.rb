class CreateRelatedResources < ActiveRecord::Migration
  def change
    create_table :rest_resources_steps, :id => false  do |t|
      t.integer :rest_resource_id
      t.integer :step_id

      t.timestamps
    end
  end
end
