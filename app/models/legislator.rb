class Legislator < ActiveRecord::Base
  attr_accessible :bioguide_id, :firstname, :lastname, :legislative_body, :party, :state, :contributions_attributes
  has_many :contributions
  # accepts_nested_attributes_for :contributions
  
  def self.search(search)
    if search
      find(:all, :conditions => ['lastname LIKE ?', "%#{search}%"])
    # else
    #   find(:all)
    end
  end
  
  # def legislator_lastname
  #   legislator.lastname if legislator
  # end
  # 
  # def legislator_lastname=(lastname)
  #   self.legislator = Legislator.find_by_lastname(lastname) unless lastname.blank?
  # end
end

