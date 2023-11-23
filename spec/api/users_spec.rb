require 'swagger_helper'

describe 'Users API' do
  path '/sign_up' do
    post 'create new user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string }
        },
        required: ['name']
      }

      response '200', 'User created successfuly' do
        let(:user) { User.create(name: 'Martino') }
        run_test!
      end

      response '422', 'validation error' do
        let(:user) { { name: '' } }
        run_test!
      end
    end
  end
  path '/login' do
    post 'Log in a user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string }
        },
        required: ['name']
      }

      response '404', 'user logged in successfully' do
        let(:user) { { name: 'Martino' } }
        run_test!
      end

      response '404', 'user not found' do
        let(:user) { { name: 'NonExistentUser' } }
        run_test!
      end
    end
  end
end
