Rails.application.routes.draw do
  resources :profiles
  resources :photos
  resources :songs
  resources :genres
  resources :artists, only: [:show, :index]
  resources :favorite_artists, only: [:create, :destroy, :index]

  get 'chat_rooms_controller/index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'


  mount ActionCable.server => '/cable'

  root 'chat_rooms#index'
end
