class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
		if @user.save
			sign_in @user
			redirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to @user
		else
			render 'show'
		end
	end

	def destroy
		User.find(params[:id]).delete
	end
end
