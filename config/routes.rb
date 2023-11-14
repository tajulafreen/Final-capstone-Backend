Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Routes for user sign up and login
  post 'sign_up', to: 'api/v1/users#sign_up'
  post 'login', to: 'api/v1/users#login'

  # Nested routes for users and their reservations
  namespace :api do
    namespace :v1 do
      # get 'reservations/index'
      # get 'reservations/create'
      # get 'reservations/update'
      # get 'reservations/destroy'
      resources :users do
        resources :reservations
      end
      resources :doctors
      # Add more resources for other controllers if needed
    end
  end
end
