class Coast < ActiveRecord::Base
  def label
    name + ' ' + country
  end
end
