class Counter < ActiveRecord::Base
  belongs_to :site
  attr_accessible :name, :urlquery, :value, :site_id, :nokogirisearch
  has_many :values
  
#  COUNTER_TYPES = [
#    ["ДВИФ Кол-во зарегестрировавшихся участников", "Valuedvif" ]
#    ]
end
