Rails.application.routes.draw do
  root to: 'sessions#welcome'

  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end