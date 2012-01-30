class Step < ActiveRecord::Base
  belongs_to :example
  belongs_to :authentication
  has_and_belongs_to_many :rest_resources
  has_and_belongs_to_many :known_issues
  default_scope  :order => 'steps.index ASC'
end
