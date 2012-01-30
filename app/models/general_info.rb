class GeneralInfo < ActiveRecord::Base
  scope :get_by_type, lambda {|type| {:conditions => {:info_type => type}}}

  def info_type_enum
    %w{version info prerequisites system_name}
  end

  def info_type?(info_type)
    self.info_type == info_type.to_s
  end
end
