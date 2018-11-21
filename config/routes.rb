Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/styles', to: 'pages#styles'
  get '/search', to: 'users_books#search_for_a_book'

  get '/speed_test', to: 'pages#speed_test'
  patch '/updating_users_reading_time', to: 'pages#updating_users_reading_time'

  resources :users_books, only: [:index, :new, :create, :show]
end
