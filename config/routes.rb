# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/movies' => 'movies#index'
      post '/movies/create' => 'movies#create'
      get '/reservations' => 'reservations#index'
      post '/reservations/create' => 'reservations#create'
      delete '/reservations/delete' => 'reservations#destroy'
      post '/register' => 'users#register'
      post '/login' => 'users#login'
    end
  end
end
