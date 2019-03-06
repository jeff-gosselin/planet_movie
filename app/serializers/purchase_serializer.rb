class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :movie_id
	belongs_to :user
	belongs_to :movie
end
