Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/styles', to: 'pages#styles'

  get '/users/speed_test', to: 'users#speed_test'
  resources :users_books except: [:destroy]
  resources :categories only: [:index, :new, :create]
end
