class ListingSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :user_id, :status
	belongs_to :user
	belongs_to :movie
end
