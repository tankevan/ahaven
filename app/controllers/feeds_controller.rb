class FeedsController < ApplicationController

	def index
	end

	def show
		@feed_id = params[:feed_id]
	end

	def create 
	  @user = User.find(current_user.id)
	  @user.feeds.create(:name => params[:feed])
	  redirect_to root_url, :notice => "Feed Created!"
	end

	def destroy
	  @user = User.find(current_user.id)
	  @feed = @user.feeds.find(params[:feed_id])
	  @feed.destroy 
	  redirect_to root_url, :notice => "Feed Deleted!"
	end
end
