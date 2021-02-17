Rails.application.routes.draw do
  get 'users/new'
  get 'tags/index'
  get 'tags/new'
  get 'pages/test'
  get 'pages/link'
  get 'pages/help'
    root 'pages#index'
    
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end