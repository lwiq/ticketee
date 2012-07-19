class Project < ActiveRecord::Base
  has_many :tickets

  validates :name, :presence => true
  attr_accessible :name
end
