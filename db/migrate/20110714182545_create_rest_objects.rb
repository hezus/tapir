class CreateRestObjects < ActiveRecord::Migration
  def self.up
    create_table :rest_objects do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
