class AddResponseRequestToRestResource < ActiveRecord::Migration
  def change
    add_column :rest_resources, :request, :text
    add_column :rest_resources, :response, :text
  end
end
