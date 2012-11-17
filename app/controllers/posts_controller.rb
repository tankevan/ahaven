class PostsController < ApplicationController

	def show
	end

	def create
	  content = {:title => params[:title], :body => params[:body]}
	  user = User.find(current_user.id)
	  feed_id = params[:feed_id]
	  feed = user.feeds.find(feed_id)
	  feed.posts.create(content)
	  redirect_to root_url(:feed_id => params[:feed_id])
	end

end
