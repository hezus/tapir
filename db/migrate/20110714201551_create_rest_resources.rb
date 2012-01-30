class CreateRestResources < ActiveRecord::Migration
  def self.up
    create_table :rest_resources do |t|
      t.text :name
      t.text :example
      t.text :description
      t.integer :rest_object_id
      t.string :html_method
      t.boolean :show_data_types
      t.boolean :has_params

      t.timestamps
    end
  end
end
