require 'net/http'
require 'json'
# require 'addressable/uri'

# http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&contributor_state=md|va&recipient_ft=mikulski&cycle=2008

def get_info
  url_string =     "http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&contributor_state=md|mn&recipient_ft=bachmann&cycle=2008"
      url = URI.escape(url_string)
      req = Net::HTTP::Get.new(url_string)
      res = Net::HTTP.start(url_string) {|http|
        http.request(req)
      }
      # a = res.body
      # b = JSON.parse
end

get_info

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

