class Api::V1::ReservationsController < ApplicationController
  before_action :set_user, only: [:create]
  before_action :set_doctor, only: %i[create update destroy]

  def index
    user = User.find(params[:user_id])
    @reservations = user.reservations.includes(:doctor).order(created_at: :desc)
    render json: @reservations, include: :doctor, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Reservations not found' }, status: :not_found
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: {
        status: { code: 200, message: 'Reservation created successfully', data: @reservation }
      }, status: :ok
    else
      render json: {
        status: { code: 400, message: 'Failed to create reservation', errors: @reservation.errors.full_messages }
      }, status: :bad_request
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      render json: {
        status: { code: 200, message: 'Reservation updated successfully', data: @reservation }
      }, status: :ok
    else
      render json: {
        status: { code: 400, message: 'Failed to update reservation', errors: @reservation.errors.full_messages }
      }, status: :bad_request
    end
  end

  def destroy
  end
end
