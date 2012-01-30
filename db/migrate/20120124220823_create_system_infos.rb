class CreateSystemInfos < ActiveRecord::Migration
  def change
    create_table :general_infos do |t|
      t.text :content
      t.string :info_type

      t.timestamps
    end
  end
end
