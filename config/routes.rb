Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'forecast', to: 'forecast#index'
      get 'backgrounds', to: 'backgrounds#index'
      resources :users, only: [:create]
      resources :sessions, only: [:create]
      resources :favorites, only: [:create]
    end
  end
end
