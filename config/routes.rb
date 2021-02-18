Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'tags/index'
  get 'tags/new'
  get 'pages/test'
  get 'pages/link'
  get 'pages/help'
    root 'pages#index'
    
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/login',   to: 'sessions#sestroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end