class User < ApplicationRecord
	has_many :ratings
	has_many :rentals
	has_many :purchases
	has_many :movies, through: :ratings
	has_many :movies, through: :rentals
	has_many :movies, through: :purchases
end
