Rails.application.routes.draw do
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/auth/registrations'
    }
  end
  resources :users, only: :show
  resources :stores
  resources :checkins
end
