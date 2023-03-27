Rails.application.routes.draw do
  devise_for :users
  root to: 'protos#index'
  resources :protos
  resources :comments, only: :create
end
