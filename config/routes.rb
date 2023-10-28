Rails.application.routes.draw do
  root to: 'sessions#welcome'

  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :projects

  get '/projects', to: 'projects#index'
  get '/projects/:id', to: 'projects#show'
  get '/projects/new', to: 'projects#new'
  get '/projects/:id/edit', to: 'projects#edit'
  post '/projects/new', to: 'projects#create'
  delete '/projects/:id', to: 'projects#destroy'
  
end