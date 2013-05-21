class Site < ActiveRecord::Base
  attr_accessible :name, :urldomain
  
  has_many :counters

  def monit
    self.counters.each do |counter|
	counter.monit
    end
  end
    
end
