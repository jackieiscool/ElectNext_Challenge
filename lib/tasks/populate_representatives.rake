require 'sunlight'
Sunlight::Base.api_key = '9d100a5aec4c4e7682548b5b436a57f9'

namespace :representatives do
  task :get_info => :environment do
    congresspeople = Sunlight::Legislator.all_where(:gender => "M")
    congresspeople.each do |legislator|
      legislator_info_hash = {}
      legislator_info_hash[:firstname] = legislator.firstname
      legislator_info_hash[:lastname] = legislator.lastname
      legislator_info_hash[:bioguide_id] = legislator.bioguide_id
      legislator_info_hash[:state] = legislator.state
      legislator_info_hash[:party] = legislator.party
      @legislator = Legislator.new(legislator_info_hash)
      begin
        @legislator.save
        p "#{@legislator.inspect} successfully added to fantasy congress"
       rescue
        p "#{@legislator.inspect} already exists, not added"
       else

       ensure
      #   p "the ensure statement executed"
      end
    end
   congresspeople = Sunlight::Legislator.all_where(:gender => "F")
    congresspeople.each do |rep|
      legislator_info_hash = {}
      legislator_info_hash[:firstname] = legislator.firstname
      legislator_info_hash[:lastname] = legislator.lastname
      legislator_info_hash[:bioguide_id] = legislator.bioguide_id
      legislator_info_hash[:state] = legislator.state
      legislator_info_hash[:party] = legislator.party
      @legislator = Legislator.new(legislator_info_hash)
      begin
        @legislator.save
        p "#{@legislator.inspect} successfully added to fantasy congress"
       rescue
        p "#{@legislator.inspect} already exists, not added"
       else

       ensure
      #   p "the ensure statement executed"
      end
    end
  end
end