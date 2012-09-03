class Legislator < ActiveRecord::Base
  attr_accessible :bioguide_id, :firstname, :lastname, :legislative_body, :party, :state
  
  def self.search(search)
    if search
      find(:all, :conditions => ['lastname LIKE ?', "%#{search}%"])
    end
  end
end

