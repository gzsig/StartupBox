Rails.application.routes.draw do
  resources :startups, only: %i[show index]
  root to: 'pages#home'
end
