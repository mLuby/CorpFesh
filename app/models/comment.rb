class Comment < ActiveRecord::Base
  belongs_to :confession
  attr_accessible :body, :commenter
end
