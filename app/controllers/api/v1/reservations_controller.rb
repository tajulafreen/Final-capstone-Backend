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
  end

  def update
  end

  def destroy
  end
end
