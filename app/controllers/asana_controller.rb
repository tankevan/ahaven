class AsanaController < ApplicationController

	def new
	end

	def create
		acc = User.find(current_user.id).accmen.find(1)
		#add params[:api_key] inview
		acc.asanas.create(:api_key => params[:api_key])
	end

	def destroy
		acc = User.find(current_user.id).accmen.find(1)
		#add params[:id] in view
		acc.asanas.destroy(params[:id])
	end

	def edit
	end

	def update
	end

end
