class Api::V1::MoviesController < ApplicationController
	def index
		@latest = Tmdb::Movie.latest
		@upcoming = Tmdb::Movie.upcoming
		@now_playing = Tmdb::Movie.now_playing
		@top_rated = Tmdb::Movie.top_rated
		@popular = Tmdb::Movie.popular
		render json: [latest: @latest, upcoming: @upcoming, now_playing: @now_playing, top_rated: @top_rated, popular: @popular]
	end

	def latest
		@latest = Tmdb::Movie.latest
		render json: @latest
	end

	def upcoming
		@upcoming = Tmdb::Movie.upcoming
		render json: @upcoming
	end

	def now_playing
		@now_playing = Tmdb::Movie.now_playing
		render json: @now_playing
	end

	def top_rated
		@top_rated = Tmdb::Movie.top_rated
		render json: @top_rated
	end

	def popular
		@popular = Tmdb::Movie.popular
		render json: @popular
	end

	def show
		@movie = Tmdb::Movie.detail(params[:id])
		render json: @movie
	end

end
