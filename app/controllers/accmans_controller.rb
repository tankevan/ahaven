class AccmansController < ApplicationController

	def index
	end

	def create
		user = User.find(current_user.id)
		user.accmen.create
		redirect_to root_url
	end

end
