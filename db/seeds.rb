# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Movie.destroy_all
Rental.destroy_all
Purchase.destroy_all
Rating.destroy_all


jeff = User.create(name: 'Jeff', password_digest: 'abc123')
meghan = User.create(name: 'Meghan', password_digest: 'xyz123')
movie_1 = Movie.create()
movie_2 = Movie.create()
movie_3 = Movie.create()
rental_1 = Rental.create(user_id: jeff.id, movie_id: movie_1.id)
rental_2 = Rental.create(user_id: meghan.id, movie_id: movie_2.id)
rental_3 = Rental.create(user_id: jeff.id, movie_id: movie_3.id)
