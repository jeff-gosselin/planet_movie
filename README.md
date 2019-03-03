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
* What do I do to store rented and bought movies for a particular user???
	Do I create a column movie with these data types...
	- movie:array (array data type)
	- movie:path (path data type)
	- movie:json (json data type)




* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# planet_movie
