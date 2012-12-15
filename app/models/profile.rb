class Profile < ActiveRecord::Base
  attr_accessible :designation, :first_name, :headline, :last_name, :phone
  validates :first_name, :last_name, :designation, :presence => true
end
