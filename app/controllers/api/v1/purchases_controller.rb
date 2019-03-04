class Api::V1::PurchasesController < ApplicationController
	def index
		@purchases = Purchase.all
		render :json => @purchases, each_serializer: PurchasesSerializer
	end

	def show
		@purchase = Purchase.find(params[:id])
		render :json => @purchase, each_serializer: PurchasesSerializer
	end
end
