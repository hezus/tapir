class KnownIssue < ActiveRecord::Base
  has_and_belongs_to_many :rest_resources
  has_and_belongs_to_many :steps
end
