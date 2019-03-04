class Movie < ApplicationRecord
	has_many :ratings, :dependent => :delete_all
	has_many :rentals, :dependent => :delete_all
	has_many :purchases, :dependent => :delete_all
	has_many :users, through: :ratings
	has_many :users, through: :rentals
	has_many :users, through: :purchases
end
