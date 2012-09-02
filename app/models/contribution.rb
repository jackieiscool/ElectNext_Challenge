class Contribution < ActiveRecord::Base
  attr_accessible :amount, :contributor_name, :contributor_state, :legislator_id
  belongs_to :legislator
end
