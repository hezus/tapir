class CreateRestResourceParams < ActiveRecord::Migration
  def self.up
    create_table :rest_resource_params do |t|
      t.text :name
      t.boolean :optional
      t.text :description
      t.integer :rest_resource_id

      t.timestamps
    end
  end
end
