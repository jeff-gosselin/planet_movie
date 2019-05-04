class Movie < ApplicationRecord
	has_many :views, :dependent => :delete_all
	has_many :users, through: :views
	has_many :interests, :dependent => :delete_all
	has_many :users, through: :interests
	
end
