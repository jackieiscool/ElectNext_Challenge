class Legislator < ActiveRecord::Base
  attr_accessible :bioguide_id, :firstname, :lastname, :legislative_body, :party, :state
end
