Rails.application.routes.draw do
  resources :startups, only: %i[show index]
  get '/testing', to: 'pages#testing'
  root to: 'pages#home'
end
