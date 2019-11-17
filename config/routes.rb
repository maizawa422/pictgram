Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  resources :topics

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  delete '/facorites/:topic_id', to: 'favorites#destroy', as: 'favorites_delete'
  
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get 'comments/new'  
  post 'comments', to: 'comments#create'
  
end
