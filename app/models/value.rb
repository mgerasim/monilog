class Value < ActiveRecord::Base
  belongs_to :counter
  attr_accessible :response, :counter
  validates :counter, :presence => true
  
  before_save :monit
  
  private
  def monit
    doc = Nokogiri::HTML(open(self.counter.urlquery))
    
    doc.search(self.counter.nokogirisearch).each do |link|
	str = link.text.delete(Nokogiri::HTML("&nbsp;").text)
	self.response = str.to_i
    end
  end
  
end
