require 'sunlight'
Sunlight::Base.api_key = '9d100a5aec4c4e7682548b5b436a57f9'

namespace :representatives do
  task :get_info => :environment do
    congresspeople = Sunlight::Legislator.all_where(:gender => "M")
    congresspeople.each do |rep|
      rep_info_hash = {}
      rep_info_hash[:firstname] = rep.firstname
      rep_info_hash[:lastname] = rep.lastname
      rep_info_hash[:bioguide_id] = rep.bioguide_id
      rep_info_hash[:state] = rep.state
      rep_info_hash[:party] = rep.party
      @rep = Representative.new(rep_info_hash)
      begin
        @rep.save
        p "#{@rep.inspect} successfully added to fantasy congress"
       rescue
        p "#{@rep.inspect} already exists, not added"
       else

       ensure
      #   p "the ensure statement executed"
      end
    end
   congresspeople = Sunlight::Legislator.all_where(:gender => "F")
    congresspeople.each do |rep|
      rep_info_hash = {}
      rep_info_hash[:firstname] = rep.firstname
      rep_info_hash[:lastname] = rep.lastname
      rep_info_hash[:bioguide_id] = rep.bioguide_id
      rep_info_hash[:state] = rep.state
      rep_info_hash[:party] = rep.party
      @rep = Representative.new(rep_info_hash)
      begin
        @rep.save
        p "#{@rep.inspect} successfully added to fantasy congress"
       rescue
        p "#{@rep.inspect} already exists, not added"
       else

       ensure
      #   p "the ensure statement executed"
      end
    end
  end
end