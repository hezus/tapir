class AddManyToManyForParamsAndResources < ActiveRecord::Migration
  def change
    create_table :rest_resource_params_rest_resources, :id => false do |t|
      t.integer :rest_resource_param_id
      t.integer :rest_resource_id

      t.timestamps
    end
    remove_column :rest_resource_params, :rest_resource_id
  end
end
