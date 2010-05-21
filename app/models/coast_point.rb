class CoastPoint < ActiveRecord::Base
  acts_as_mappable :default_units => :kms
  ActiveRecord::Base.include_root_in_json = false
end
