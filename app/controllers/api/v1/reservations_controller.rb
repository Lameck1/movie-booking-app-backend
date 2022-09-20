module Api
  module V1
    class ReservationsController < ApplicationController
      # before_action :set_reservation, only: :destroy

      def index
        @user = User.find_by(username: params[:username])
        @reservations = @user.reservations

        @reservations = Reservation.all
        if @reservations
          render json: { success: true, message: 'Loaded all reservations', data: { reservations: @reservations } },
                 status: :ok

        else
          render json: { success: false, errors: 'Opps! Something went wrong' }, status: :unprocessable_entity
        end
      end

      # POST /reservations

      def create
        @user = User.find_by(username: params[:username])
        @new_reservation = @user.reservations.create(movie_id: params[:movie_id],
                                                     date: params[:date]),
                           @new_reservation = Reservation.create(movie_id: params[:movie_id],
                                                                 date: params[:date], location: params[:location])

        if @new_reservation.save
          render json: { success: true, message: 'Reservation created', data: { reservation: @new_reservation } },
                 status: :created

        else
          render json: { success: false, errors: new_reservation.errors }, status: :unprocessable_entity
        end
      end

      # DELETE /reservation

      def destroy
        @reservation = Reservation.find(params[:id]).destroy!

        if @reservation.destroy
          render json: { message: 'Reservation successfully deleted' }

        else
          render json: @reservation.errors, status: :unprocessable_entity
        end
      end

      private

      def set_reservation
        @reservation = Reservation.find(params[:id])
      end
    end
  end
end
