Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	# get 'api/v1/movies/latest', to: 'movies#latest'
	# get 'api/v1/movies/upcoming', to: 'movies#upcoming'
	# get 'api/v1/movies/now-playing', to: 'movies#now_playing'
	# get 'api/v1/movies/top-rated', to: 'movies#top_rated'
	# get 'api/v1/movies/popular', to: 'movies#popular'

	namespace :api do
    namespace :v1 do
			get 'movies/latest', to: 'movies#latest'
			get 'movies/upcoming', to: 'movies#upcoming'
			get 'movies/now-playing', to: 'movies#now_playing'
			get 'movies/top-rated', to: 'movies#top_rated'
			get 'movies/popular', to: 'movies#popular'
      resources :users
      resources :movies
      resources :ratings
			resources :rentals
			resources :purchases
    end
  end



end
