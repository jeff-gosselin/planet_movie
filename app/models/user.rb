class User < ApplicationRecord
	has_secure_password
	validates :name, uniqueness: { case_sensitive: false }

	has_many :listings, :dependent => :delete_all
	has_many :movies, through: :listings
end
