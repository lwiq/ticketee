class Project < ActiveRecord::Base
  validates :name, :presence => true
  attr_accessible :name
end
