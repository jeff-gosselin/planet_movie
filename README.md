# README

# INITIAL SETUP
* Uses Rails 5.2.2 and PostgreSQL 11
* Created new Rails project with "rails new planet_movie  --api -T --database=postgresql"
* PostgreSQL 11 (In order for it to work paste "host: localhost" in database.yml)
* Pasted gem 'rack-cors', require: 'rack/cors' into Gemfile
* Pasted gem 'themoviedb-api'
* Bundle install
* Added API Key to an initializer file
* require 'themoviedb' in application.rb
* Created serializers to hide data from being shown in the json
* Made Rating, Rental, Purchase, dependants of User and Movie models
	(now if a user or movie instance gets destroyed so does its dependants)

* What do I do to store rented and bought movies for a particular user???
	Do I create a column movie with these data types...
	- movie:array (array data type)
	- movie:path (path data type)
	- movie:json (json data type)

	or reference:bigint (store the TMDB movie id number for a particular movie)




* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# planet_movie
