class ShopsController < ApplicationController
	def new
		@shop = Shop.new
	end

	def create

	end

	def show
		
		@shop = Shop.find(params[:id])
	end

	def index
		@shops = Shop.all
	end

	def edit
		@shop = Shop.find(params[:id])
	end

	def update
		@shop = Shop.find(params[:id])
		if @shop.update_attributes(params[:shop])
			redirect_to @shop
		else
			render 'edit'
		end
	end
end
