class Confession < ActiveRecord::Base
  attr_accessible :user, :confession
  validates :confession, :presence => true,
                         :length => {:minimum => 5}
                         
  has_many :comments, :dependent => :destroy
end
