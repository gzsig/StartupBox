Rails.application.routes.draw do
  resources :startups, only: %i[show index]
  resources :people, only: %i[show]
  get '/testing', to: 'pages#testing'
  root to: 'pages#home'
end
