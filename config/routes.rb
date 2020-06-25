Rails.application.routes.draw do
  root to: 'application#home'

  resources :users, only: [:new, :create, :show]
 
  get '/welcome', to: 'sessions#welcome'
  get "/auth/:provider/callback", to: "sessions#oauth"
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  get '/all', to: 'vehicles#all'
  get "/highestRatings", to: "reviews#highest_rated"
  

  resources :users do
    resources :reviews
end

  resources :vehicles do
    resources :reviews
  end

  resources :users do 
    resources :vehicles
  end





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
