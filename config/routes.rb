Rails.application.routes.draw do

  resources :tips, only: [:index, :show]
  resources :contributions, only: [:index, :show, :create, :destroy]

  root to: 'pages#home'
end
