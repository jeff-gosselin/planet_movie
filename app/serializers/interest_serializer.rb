class InterestSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :movie_id, :movie
  belongs_to :user
  belongs_to :movie
end
