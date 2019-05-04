class Api::V1::InterestsController < ApplicationController
    def index
		@interests = Interest.all
		render json: @interests
	end

	def show
		@interest = Interest.find(params[:id])
		render json: @interest
	end

	def create
		@interest = Interest.create(interest_params)
		render json: @interest
	end

	private

	def interest_params
		params.require(:interest).permit(:user_id, :movie_id)
	end
end
