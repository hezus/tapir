class CreateRestDatatypes < ActiveRecord::Migration
  def self.up
    create_table :rest_datatypes do |t|
      t.string :name
      t.string :example
      t.string :format
      t.text :description
    end
  end
end
