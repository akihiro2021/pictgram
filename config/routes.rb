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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end