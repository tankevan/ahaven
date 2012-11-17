class Feed < ActiveRecord::Base
  attr_accessible :applications, :name, :no_unread
  has_many :posts
  belongs_to :user

end
