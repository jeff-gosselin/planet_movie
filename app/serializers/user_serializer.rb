class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
	has_many :views
	has_many :movies, through: :views
end
