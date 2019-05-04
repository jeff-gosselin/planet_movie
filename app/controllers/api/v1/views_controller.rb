class Api::V1::ViewsController < ApplicationController
    def index
		@views = View.all
		render json: @views
	end

	def show
		@view = View.find(params[:id])
		render json: @view
	end

	def create
		@view = View.create(view_params)
		render json: @view
	end

	private

	def view_params
		params.require(:view).permit(:user_id, :movie_id)
	end

end
