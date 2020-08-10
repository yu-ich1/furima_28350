Rails.application.routes.draw do
  devise_for :users
  resources :users 

  resources :items
  root to: 'items#index'
  get 'new_item', to: 'items#new'

end
