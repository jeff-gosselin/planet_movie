class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
	has_many :ratings
	has_many :rentals
	has_many :purchases
end
