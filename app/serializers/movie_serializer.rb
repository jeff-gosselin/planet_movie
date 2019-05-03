class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :overview, :release_date, :vote_average, :category, :poster_path, :backdrop_path, :ref_code
  has_many :listings
  has_many :users, through: :listings

end
