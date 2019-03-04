class Api::V1::UsersController < ApplicationController
	def index
		@users = User.all
		render :json => @users, each_serializer: UsersSerializer
	end

	def show
		@user = User.find(params[:id])
		render :json => @user, each_serializer: UsersSerializer
	end

	def create
		@user = User.create(user_params)
		render :json => @user, each_serializer: UsersSerializer
	end

	def update
		@user = User.find(params[:id])
		@user.update(book_params)
		render :json => @user, each_serializer: UsersSerializer
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

	private

	def user_params
		params.require(:users).permit(:name, :password_digest)
	end
end
