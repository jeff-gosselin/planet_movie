class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
	has_many :listings
	has_many :movies, through: :listings
end
