class LineItemsController < ApplicationController
	def new
		@line_item = LineItem.new
	end

	def create
		@cart = current_cart
		product = Product.find(params[:product_id])
		@line_item = @cart.line_items.build(product:product)
		if @line_item.save
			redirect_to @line_item.cart
		else
			render 'new'
		end
	end

	def show
		@line_item = LineItem.find(params[:id])
	end

	def edit
		@line_item = LineItem.find(params[:id])
	end

	def update
		@line_item = LineItem.find(params[:id])
		if @line_item.update_attributes(params[:line_item])
			redirect_to @line_item
		else
			render 'edit'
		end
	end

	def index
		@line_items = LineItem.all
	end

	def destroy
		LineItem.find(params[:id]).destroy
	end

end
