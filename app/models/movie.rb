class Movie < ApplicationRecord
	has_many :listings, :dependent => :delete_all
	has_many :users, through: :listings
	
end
