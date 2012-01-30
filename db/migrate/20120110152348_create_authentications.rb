class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
