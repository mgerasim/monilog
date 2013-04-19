class Site < ActiveRecord::Base
  attr_accessible :name, :urldomain
  
  has_many :counters
end
