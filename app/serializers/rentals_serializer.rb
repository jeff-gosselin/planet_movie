class RentalsSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :user_id
end
