Rails.application.routes.draw do
  root to: 'application#home'
  resources :reviews
  resources :users, only: [:new, :create]
  resources :vehicles
  get '/welcome', to: 'sessions#welcome'
  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
