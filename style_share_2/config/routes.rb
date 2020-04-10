Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#show'
  get 'pages/show'
  post 'pages/show', to: 'pages#update'

  resources :sketches
end
