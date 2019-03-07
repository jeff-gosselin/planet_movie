class MovieSerializer < ActiveModel::Serializer
  attributes :id
	has_many :rentals
	has_many :purchases
	

end
