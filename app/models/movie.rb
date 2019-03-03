class Movie < ApplicationRecord
	has_many :ratings
	has_many :rentals
	has_many :purchases
	has_many :users, through: :ratings
	has_many :users, through: :rentals
	has_many :users, through: :purchases
end
