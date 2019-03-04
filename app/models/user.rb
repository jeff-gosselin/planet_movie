class User < ApplicationRecord
	has_many :ratings, :dependent => :delete_all
	has_many :rentals, :dependent => :delete_all
	has_many :purchases, :dependent => :delete_all
	has_many :movies, through: :ratings
	has_many :movies, through: :rentals
	has_many :movies, through: :purchases
end
