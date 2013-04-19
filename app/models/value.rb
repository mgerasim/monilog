class Value < ActiveRecord::Base
  belongs_to :counter
  attr_accessible :response, :counter
end
