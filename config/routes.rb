Rails.application.routes.draw do
  root to: 'application#home'

  resources :users, only: [:new, :create, :show]
 
  get '/welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  get '/vehicle', to: 'vehicles#new'
  

  resources :users, only: [:show, :delete] do
    resources :reviews
end

  resources :vehicles do
    resources :reviews
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
