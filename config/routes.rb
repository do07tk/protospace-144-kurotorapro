Rails.application.routes.draw do
  get 'protos/index'
  root to: "protos#index"
  resources :protos
end
