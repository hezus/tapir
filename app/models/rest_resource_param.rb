class RestResourceParam < ActiveRecord::Base
  belongs_to :rest_resource
  has_many :rest_param_examples
  has_and_belongs_to_many :rest_resource
end
