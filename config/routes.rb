Rails.application.routes.draw do
  get 'pages/test'
  get 'pages/link'
  get 'pages/help'
  root 'pages#index'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  
  resources :users
  resources :topics
  resources :comments
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites',  to: 'favorites#destroy'
  
  get 'comments/new'
  post '/comments', to: 'comments#create'
  delete '/comments', to: 'comment#destroy'
  
  resources :topics do
    resources :comments
  end  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end