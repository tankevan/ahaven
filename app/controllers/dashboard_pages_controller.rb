class DashboardPagesController < ApplicationController
	before_filter :authorize

	def index
  	  @feed = current_user.feeds.all
  	  @feed_id = nil
  	  if params[:feed_id]
	  	  @target_feed = current_user.feeds.find(params[:feed_id])
		  @posts = @target_feed.posts.all 
		  @feed_id = params[:feed_id]
	  end


	end

	protected

	def authorize
	  if !user_signed_in?
	    redirect_to home_path
	  end
	end

end
