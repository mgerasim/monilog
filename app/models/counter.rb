class Counter < ActiveRecord::Base
  belongs_to :site
  attr_accessible :name, :urlquery, :value, :site_id, :nokogirisearch
  has_many :values
  
  def monit
    self.values << Value.new
    self.save
  end
  
end
