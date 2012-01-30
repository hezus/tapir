class AddResponseToRestResource < ActiveRecord::Migration
  def change
    add_column :rest_resources, :response_json, :text
    rename_column :rest_resources, :response, :response_xml
  end
end
