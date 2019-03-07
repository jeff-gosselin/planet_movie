class Api::V1::PurchasesController < ApplicationController
	def index
		@purchases = Purchase.all
		render :json => @purchases, each_serializer: PurchasesSerializer
	end

	def show
		@purchase = Purchase.find(params[:id])
		render :json => @purchase, each_serializer: PurchasesSerializer
	end

	def create
		@purchase = Purchase.create(purchase_params)
		render :json => @purchase, each_serializer: PurchaseSerializer
	end

	private

	def purchase_params
		params.require(:purchase).permit(:movie_id, :user_id)
	end

end
