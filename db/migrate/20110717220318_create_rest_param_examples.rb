class CreateRestParamExamples < ActiveRecord::Migration
  def self.up
    create_table :rest_param_examples do |t|
      t.string :example
      t.integer :rest_resource_param_id
    end
  end
end
