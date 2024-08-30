Rails.application.routes.draw do
  get 'password_resets/edit'
  get 'password_resets/new'
  root 'static_pages#home'


  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do # learn more about member and collection
      get :following, :followers
    end
  end
  # resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  # resources :microposts, only: [:create, :destroy]
  # resources :relationships, only: [:create, :destroy]
end
