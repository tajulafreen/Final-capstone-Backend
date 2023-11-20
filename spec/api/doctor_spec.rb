require 'swagger_helper'
describe 'Doctors API' do
  path '/api/v1/doctors' do
    post 'create new doctor' do
      tags 'Doctors'
      consumes 'application/json'
      parameter name: :doctor, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string }, specialization: { type: :string }, image: { type: :string }, fee: { type: :decimal }
        },
        required: %w[name specialization fee image]
      }
      response '201', 'Doctor created' do
        let(:doctor) do
          {
            name: 'Dr.Smith', image: 'https://example.com/john-smith.jpg',
            specialization: 'Cardiologist', bio: 'Experienced cardiologist with 10+ years of practice.',
            fee: 150.00
          }
        end
        run_test!
      end
      response '422', 'Invalid request' do
        let(:doctor) do
          {
            name: '',
            specialization: 'Cardiologist'
          }
        end
        run_test!
      end
    end
  end
  path '/api/v1/doctors' do
    get 'fetches all doctors' do
      tags 'doctors'
      response '200', 'list of doctors' do
        run_test!
      end
    end
  end
  path '/api/v1/doctors/{doctor_id}' do
    get 'retrieves a single doctor' do
      tags 'doctor'
      consumes 'application/json'
      parameter name: :doctor_id, in: :path, required: true
      response '200', 'doctor retrieved' do
        let(:doctor) { Doctor.create(name: 'Dr. John Doe', specialization: 'Cardiologist', image: 'https://example.com/doctor.jpg', fee: 150.00, bio: 'Experienced cardiologist with 10+ years of practice.') }
        let(:doctor_id) { doctor.id }
        run_test!
      end
    end
  end
  path '/api/v1/doctors/{doctor_id}' do
    delete 'deletes a single doctor' do
      tags 'doctor'
      consumes 'application/json'
      parameter name: :doctor_id, in: :path, required: true
      response '204', 'doctor deleted' do
        let(:doctor) { Doctor.create(name: 'Dr. John Doe', specialization: 'Cardiologist', image: 'https://example.com/doctor.jpg', fee: 150.00, bio: 'Experienced cardiologist with 10+ years of practice.') }
        let(:doctor_id) { doctor.id }
        run_test!
      end
    end
  end
end
