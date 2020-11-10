Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: :create
      resources :sessions, only: :create
      resources :forecast, only: :index
      resources :trails, only: :index
      resources :backgrounds, only: :index
    end
  end
end
