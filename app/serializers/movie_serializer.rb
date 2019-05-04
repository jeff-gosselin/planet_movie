class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :overview, :release_date, :vote_average, :category, :poster_path, :backdrop_path, :ref_code, :ban
  has_many :views
  has_many :users, through: :views
  has_many :interests 
  has_many :users, through: :interests

end
