require 'net/http'
require 'json'

  url_string = "http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&contributor_state=mn&recipient_ft=walz&cycle=2010&per_page=10"
     url = URI.parse(URI.escape(url_string))
     puts url
     req = Net::HTTP::Get.new(url_string)
     puts req
     res = Net::HTTP.start(url.host, url.port) {|http|
       http.request(req)
     }
     a = res.body
     puts a.class
     b = JSON.parse(a)
     b.each do |contribution|
       amount = contribution["amount"]
       contributor = contribution["contributor_name"]
       puts amount
       puts contributor
     end
     
     
     
     



