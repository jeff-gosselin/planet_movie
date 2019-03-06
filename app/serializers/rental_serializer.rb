class RentalSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :user_id
	belongs_to :user
	belongs_to :movie
end
