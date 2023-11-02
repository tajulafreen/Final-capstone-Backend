class Api::V1::DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :destroy]
  def index
    @doctors = Doctor.all
    render json: @doctors
  end
  
end
