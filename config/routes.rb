Rails.application.routes.draw do

  resources :tips, only: [:index, :show]
  resources :contributions, only: [:index, :show, :create, :destroy]

  match '/auth/:provider/callback', to: "sessions#create", via: [:get, :post]
  get '/auth/failure' => 'sessions#failure'
  get '/signin' => 'sessions#new', as: :signin
  get '/signout' => 'sessions#destroy', as: :signout

  root to: 'pages#home'

end
