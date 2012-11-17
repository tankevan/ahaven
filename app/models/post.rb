class Post < ActiveRecord::Base
  attr_accessible :body, :read_status, :title
  belongs_to :feed

  def self.create_post(content)
  	create! do |user|
  	  user.title = content.title
  	  user.body = content.body
  	end
  end

end
