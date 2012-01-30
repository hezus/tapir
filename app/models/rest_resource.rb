class RestResource < ActiveRecord::Base
  belongs_to :rest_object
  has_and_belongs_to_many :rest_resource_params
  has_and_belongs_to_many :steps
  has_and_belongs_to_many :known_issues
end
