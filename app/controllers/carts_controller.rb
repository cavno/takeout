class CartsController < ApplicationController
	def new
		@cart = Cart.new
	end

	def create
		@cart = Cart.create(params[:cart])
		if @cart.save
			redirect_to @cart
		else
			render 'new'
		end
	end


	def show
		@cart = Cart.find(params[:id])
	end

	def index
		@carts =Cart.all
	end

	def edit
		@cart =Cart.find(params[:id])
	end

	def update
		@cart = Cart.find(params[:id])
		if @cart.update_attributes(params[:cart])
			redirect_to @cart
		else
			render 'edit'
		end
	end


	def destroy
		Cart.find(params[:id]).destroy
	end


end