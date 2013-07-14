class ProductsController < ApplicationController

	def new
		@product = Product.new
	end

	def create
		@product = Product.create(params[:product])
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(params[:product])
		else
			render 'edit'
		end
	end

end
