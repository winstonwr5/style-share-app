Rails.application.routes.draw do
  resources :prompts
  get "style_share_2/app/views/prompts/show.html.erb", to: "pages#show", as: "user_prompt"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#show'
  get 'pages/show'
  post 'pages/show', to: 'pages#update'

  resources :sketches
end
