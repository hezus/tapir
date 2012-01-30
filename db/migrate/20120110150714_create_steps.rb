class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.integer :index
      t.text :content
      t.integer :authentication_id
      t.integer :example_id

      t.timestamps
    end
  end
end
