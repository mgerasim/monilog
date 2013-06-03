class Counter < ActiveRecord::Base
  belongs_to :site
  attr_accessible :name, :urlquery, :value, :site_id, :nokogirisearch, :position
  has_many :values
  
  def monit
    self.values << Value.new
    self.save
  end
  
  def response_on(date)
    value =  self.values.where("date(created_at) = ?",date).last
    if (value == nil)
	0
    else
	value.response
    end
  end
  
end
