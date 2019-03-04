class Api::V1::MoviesController < ApplicationController
	def index
		@latest = Tmdb::Movie.latest
		@upcoming = Tmdb::Movie.upcoming
		@now_playing = Tmdb::Movie.now_playing
		@top_rated = Tmdb::Movie.top_rated
		@popular = Tmdb::Movie.popular
		render json: [latest: @latest, upcoming: @upcoming, now_playing: @now_playing, top_rated: @top_rated, popular: @popular]
	end

	
end
