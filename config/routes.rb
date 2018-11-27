Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/styles', to: 'pages#styles'
  get '/results', to: 'users_books#results'
  get '/search', to: 'users_books#search_for_a_book'
  get '/book_confirmation/:id', to: 'pages#book_confirmation', as: 'book_confirmation'

  get '/speed_test', to: 'pages#speed_test'
  patch '/updating_users_reading_time', to: 'pages#updating_users_reading_time'

  patch '/mood/:id', to: 'moods#add_book', as: 'add_book'

  resources :users_books, only: [:new, :create, :show]
  resources :moods, only: [:index, :show, :new, :create]
end
