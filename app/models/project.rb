class Project < ActiveRecord::Base
  has_many :tickets, :dependent => :destroy
  has_many :permissions, :as => :thing

  validates :name, :presence => true, :uniqueness => true
  attr_accessible :name

  scope :readable_by, lambda { |user|
    joins(:permissions).where(:permissions => { :action => "view", :user_id => user.id })
  }

end
