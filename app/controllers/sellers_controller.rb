class SellersController < ApplicationController
	def new
		@seller = Seller.new
	end

	def create
		@seller = Seller.create(params[:seller])
		if @seller.save
			redirect_to @seller
		else
			render 'new'
		end
	end

	def show
		@seller = Seller.find(params[:id])
	end

	def index
		@sellers = Seller.all
	end

	def edit
		@seller = Seller.find(params[:id])
	end

	def update
		@seller = Seller.find(params[:id])
		if @seller.update_attributes(params[:seller])
			redirect_to @seller
		else
			render 'edit'
		end
	end
end
