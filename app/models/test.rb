require 'net/http'
require 'json'
# require 'addressable/uri'

# http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&contributor_state=md|va&recipient_ft=mikulski&cycle=2008

# def get_info
  url_string =     "http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&contributor_state=md|mn&recipient_ft=ellison&cycle=2008"
     url = URI.parse(URI.escape(url_string))
     puts url
     req = Net::HTTP::Get.new(url_string)
     puts req
     res = Net::HTTP.start(url.host, url.port) {|http|
       http.request(req)
     }
     puts res
     a = res.body
     b = JSON.parse(a[:amount])
     puts b 
    
     
     # puts b[:contributor_name]
     #    b = JSON.parse
     #    
     #    puts b

# uri = URI.parse(URI.escape(url_string))

# Net::HTTP.start(uri.host, uri.port) do |http|
#   request = Net::HTTP::Get.new uri.request_uri
#   #response = http.request request # Net::HTTPResponse object
#   puts http.request request
# end





# require 'addressable/uri'
# 
# url = 'http://www.example.com'
# 
# uri = Addressable::URI.parse(url)
# uri.query_values = {
#   :foo => :bar,
#   :q   => '"one two"'
# }
# 
# uri.to_s

