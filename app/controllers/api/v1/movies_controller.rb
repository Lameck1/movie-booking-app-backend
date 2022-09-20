module Api
  module V1
    class MoviesController < ApplicationController
      def index
        @movies = Movie.all
        if @movies
          render json: { success: true, message: 'Loaded all movies', data: { movies: @movies } }, status: :ok
        else
          render json: { success: false, errors: 'Opps! Something went wrong' }, status: :unprocessable_entity
        end
      end

      # POST /movies
      def create
        @new_movie = Movie.new(title: params[:title], description: params[:description], photo: params[:photo],
                               director: params[:director],
                               playing_time: params[:playing_time],
                               release_date: params[:release_date],
                               genre: params[:genre], ticket_price: params[:ticket_price],
                               country: params[:country],
                               lead_cast: params[:lead_cast])
        if @new_movie.save
          render json: { success: true, message: 'Movie created', data: { movie: @new_movie } }, status: :created
        else
          render json: { success: false, errors: new_movie.errors }, status: :unprocessable_entity
        end
      end
    end
  end
end
