require 'swagger_helper'
describe 'Reservations API ' do
  path '/api/v1/users/{user_id}/reservations' do
    post 'creates a new reservation' do
      tags ' creates a reservation'
      consumes 'application/json'
      parameter name: :user_id, in: :path, required: true, type: :integer
      parameter name: :reservation, in: :body, required: true, schema: {
        type: :object, properties: {
          city: { type: :string }, date: { type: :string }, doctor_id: { type: :interger }, user_id: { type: :interger }
        }, required: %w[city date doctor_id user_id]
      }
      response '200', 'Reservation created' do
        let(:user) { User.create(name: 'Martino') }
        let(:user_id) { user.id }
        let(:doctor) { Doctor.create(name: 'Dr. John Doe', specialization: 'Cardiologist', image: 'https://example.com/doctor.jpg', fee: 150.00, bio: 'Experienced cardiologist with 10+ years of practice.') }
        let(:doctor_id) { doctor.id }
        let(:reservation) do
          { city: 'New York', date: (Date.today + 1).to_s, user_id: user_id, doctor_id: doctor_id }
          # Update the 'date' field to a future date, for example, Date.today + 1 for one day ahead
        end
        run_test!
      end
      response '404', 'User not found' do
        let(:user) { User.create(name: 'Martino') }
        let(:user_id) { user.id }
        let(:doctor) { Doctor.create(name: 'Dr. John Doe', specialization: 'Cardiologist', image: 'https://example.com/doctor.jpg', fee: 150.00, bio: 'Experienced cardiologist with 10+ years of practice.') }
        let(:doctor_id) { doctor.id }
        let(:reservation) do
          { city: 'New york', date: '2023-11-01', doctor_id: }
        end
        run_test!
      end
    end
  end
  path '/api/v1/users/{user_id}/reservations' do
    get 'retrieves all reservations' do
      tags 'reservations'
      consumes 'application/json'
      parameter name: :user_id, in: :path, required: true, type: :integer
      response '200', 'reservations retrieved' do
        let(:user) { User.create(name: 'martin') }
        let(:user_id) { user.id }
        run_test!
      end
    end
  end
end
