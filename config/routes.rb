Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/styles', to: 'pages#styles'

  get '/users/speed_test', to: 'users#speed_test'

  resources :users_books, only: [:index, :new, :create, :show]
end
