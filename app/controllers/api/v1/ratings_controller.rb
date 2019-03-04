class Api::V1::RatingsController < ApplicationController
	def index
		@ratings = Rating.all
		render json: @ratings
	end

	def show
		@rating = Rating.find(params[:id])
		render json: @rating
	end

	def create
		@rating = Rating.create(rating_params)
		render json: @rating
	end

	private

	def rating_params
		params.require(:ratings).permit(:user_id, :movie_id)
	end
end
