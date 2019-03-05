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

latest = Tmdb::Movie.latest
upcoming = Tmdb::Movie.upcoming
now_playing = Tmdb::Movie.now_playing
top_rated = Tmdb::Movie.top_rated
popular = Tmdb::Movie.popular


	# Movie.create(
	# 	title: latest.results.title,
  #   overview: latest.results.overview,
  #   release_date: latest.results.release_date,
  #   vote_average: latest.results.vote_average,
  #   poster_path: latest.results.poster_path,
  #   backdrop_path: latest.results.backdrop_path,
  #   ref_code: latest.results.id,
	# 	category: 'latest'
	# )

upcoming.results.each do |mov|
	Movie.create(
		title: mov.title,
    overview: mov.overview,
    release_date: mov.release_date,
    vote_average: mov.vote_average,
    poster_path: mov.poster_path,
    backdrop_path: mov.backdrop_path,
    ref_code: mov.id,
		category: 'upcoming',
		rental_price: 99.99,
		purchase_price: 279.99
	)
end

now_playing.results.each do |mov|
	Movie.create(
		title: mov.title,
    overview: mov.overview,
    release_date: mov.release_date,
    vote_average: mov.vote_average,
    poster_path: mov.poster_path,
    backdrop_path: mov.backdrop_path,
    ref_code: mov.id,
		category: 'now_playing',
		rental_price: 29.99,
		purchase_price: 79.99
	)
end


top_rated.results.each do |mov|
	Movie.create(
		title: mov.title,
    overview: mov.overview,
    release_date: mov.release_date,
    vote_average: mov.vote_average,
    poster_path: mov.poster_path,
    backdrop_path: mov.backdrop_path,
    ref_code: mov.id,
		category: 'top_rated',
		rental_price: 4.99,
		purchase_price: 17.99
	)
end

popular.results.each do |mov|
	Movie.create(
		title: mov.title,
    overview: mov.overview,
    release_date: mov.release_date,
    vote_average: mov.vote_average,
    poster_path: mov.poster_path,
    backdrop_path: mov.backdrop_path,
    ref_code: mov.id,
		category: 'popular',
		rental_price: 6.99,
		purchase_price: 19.99
	)
end


jeff = User.create(name: 'Jeff', password_digest: 'abc123')
meghan = User.create(name: 'Meghan', password_digest: 'xyz123')
#
# rental_1 = Rental.create(user_id: jeff.id, movie_id: movie_1.id)
# rental_2 = Rental.create(user_id: meghan.id, movie_id: movie_2.id)
# rental_3 = Rental.create(user_id: jeff.id, movie_id: movie_3.id)
# rating_1 = Rating.create(user_id: jeff.id, movie_id: movie_3.id, viewer_rating: 4)
# rating_2 = Rating.create(user_id: jeff.id, movie_id: movie_1.id, viewer_rating: 6)
# rating_3 = Rating.create(user_id: meghan.id, movie_id: movie_2.id, viewer_rating: 3)
# purchase_1 = Purchase.create(user_id: jeff.id, movie_id: movie_2.id)
