require 'net/http'
require 'json'

url = URI.parse('http://mgerasim.ru:3000/sites.json')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

JSON.parse(res.body).each do |x|
    url_str = "http://mgerasim.ru:3000/sites/#{x['id']}/counters.json"
    url_sites = URI.parse(url_str)
    req_sites = Net::HTTP::Get.new(url_sites.to_s)
    res_sites = Net::HTTP.start(url_sites.host, url_sites.port) {|http|
	http.request(req_sites)
    }

    JSON.parse(res_sites.body).each do |xx|
	url_str_counters = "http://mgerasim.ru:3000/counters/#{xx['id']}/values/new"
	url_counters = URI.parse(url_str_counters)
	req_counters = Net::HTTP::Get.new(url_counters.to_s)
	res_counters = Net::HTTP.start(url_counters.host, url_counters.port) {|http|
	    http.request(req_counters)
	}
    end
    
    
    
end

