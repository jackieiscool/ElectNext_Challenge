require 'net/http'
require 'json'

  url_string = "http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&contributor_state=mn&recipient_ft=walz&cycle=2010"
     url = URI.parse(URI.escape(url_string))
     puts url
     req = Net::HTTP::Get.new(url_string)
     puts req
     res = Net::HTTP.start(url.host, url.port) {|http|
       http.request(req)
     }
     puts res
     a = res.body
     b = JSON.parse(a)
     puts b 
     
     #Contributions come in separate JSON objects. Must somehow put into an array, and add commas in between
     #so that you can iterate through
     
     



