class Api::V1::UsersController < ApplicationController
	def index
		@users = User.all
		render :json => @users, each_serializer: UsersSerializer
	end
end
