Rails.application.routes.draw do
  get 'tags/index'
  get 'tags/new'
  get 'pages/test'
  get 'useres/new'
  get 'pages/link'
  get 'pages/help'
    root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end