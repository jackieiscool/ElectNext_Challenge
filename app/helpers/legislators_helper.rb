module LegislatorsHelper
  require 'net/http'
  require 'json'
  
  def in_state_count
    get_in_state_contributions.count
  end
  
  def out_state_count
    (get_out_state_contributions.count) - (in_state_count) 
  end
  
  def in_state_amount
    total = 0
    get_in_state_contributions.each do |amount|
      total = total + amount
    end
    return total
  end
  
  def out_state_amount
    total = 0
    get_out_state_contributions.each do |amount|
      total = total + amount
    end
    return total - in_state_amount
  end
  
  def get_in_state_contributions
     url_string = "http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&contributor_state=#{@legislator.state}&recipient_ft=#{@legislator.lastname}&cycle=2012"
     url = URI.parse(URI.escape(url_string))
     req = Net::HTTP::Get.new(url_string)
     res = Net::HTTP.start(url.host, url.port) {|http|
       http.request(req)
     }
     a = res.body
     puts a.class
     b = JSON.parse(a)
     amount_array = []
     b.each do |contribution|
       amount_array << contribution["amount"].to_i
     end
     return amount_array
   end
  
  def get_out_state_contributions
    url_string = "http://transparencydata.com/api/1.0/contributions.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&recipient_ft=#{@legislator.lastname}&cycle=2012"
    url = URI.parse(URI.escape(url_string))
    req = Net::HTTP::Get.new(url_string)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    a = res.body
    puts a.class
    b = JSON.parse(a)
    amount_array = []
    b.each do |contribution|
      amount_array << contribution["amount"].to_i
    end
    return amount_array
  end
end
