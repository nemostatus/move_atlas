Rails.application.routes.draw do
  root to: 'application#home'

  resources :users, only: [:new, :create, :show]
 
  get '/welcome', to: 'sessions#welcome'
  get "/auth/:provider/callback", to: "sessions#oauth"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
resources :vehicles do
    resources :reviews
  end









  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
