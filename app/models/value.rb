class Value < ActiveRecord::Base
  belongs_to :counter
  attr_accessible :response, :counter
  validates :counter, :presence => true
  
  before_save :monit
  
  private
  def monit
    doc = Nokogiri::HTML(open(self.counter.urlquery, 'User-Agent' => 'Mozilla'))
    
    i = 0
    doc.search(self.counter.nokogirisearch).each do |link|
	str = link.text.delete(Nokogiri::HTML("&nbsp;").text)
	self.response = str.to_i
	i += 1
	if i == self.counter.position then
	    return
	end
    end
  end
  
end
