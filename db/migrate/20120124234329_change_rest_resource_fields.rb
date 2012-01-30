class ChangeRestResourceFields < ActiveRecord::Migration
  def change
    add_column :rest_resources, :request_payload, :text
    remove_column :rest_resources, :example
  end
end
