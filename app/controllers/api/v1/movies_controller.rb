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
		@upcoming = Movie.all.select do |mov|
			mov.category == 'upcoming'
		end
		render json: @upcoming
	end

	def now_playing
		@now_playing = Movie.all.select do |mov|
			mov.category == 'now_playing'
		end
		render json: @now_playing
	end

	def top_rated
		@top_rated = Movie.all.select do |mov|
			mov.category == 'top_rated'
		end
		render json: @top_rated
	end

	def popular
		@popular = Movie.all.select do |mov|
			mov.category == 'popular'
		end
		render json: @popular
	end

	def show
		@movie = Movie.find_by(ref_code: params[:id])
		render json: @movie
	end

end
