class Authentication < ActiveRecord::Base
  has_many :steps
end
