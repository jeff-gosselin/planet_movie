class Api::V1::UsersController < ApplicationController
	# skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

	def index
		@users = User.all
		render :json => @users, each_serializer: UserSerializer
	end

	def show
		@user = User.find(params[:id])
		render :json => @user, each_serializer: UserSerializer
	end

	# def create
	# 	@user = User.create(user_params)
	# 	render :json => @user, each_serializer: UserSerializer
	# end

	def create
		@user = User.create(user_params)
		@token = encode_token({ user_id: @user.id })
   	if @user.valid?
	    render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
	  else
	    render json: { error: 'failed to create user' }, status: :not_acceptable
	  end
	end

	def update
		@user = User.find(params[:id])
		@user.update(book_params)
		render :json => @user, each_serializer: UserSerializer
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

	private

	def user_params
		params.require(:user).permit(:name, :password)
	end
end
