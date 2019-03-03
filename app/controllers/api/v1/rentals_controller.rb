class Api::V1::RentalsController < ApplicationController
	def index
		@rentals = Rental.all
		render :json => @rentals, each_serializer: RentalsSerializer
	end


end
