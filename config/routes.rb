Rails.application.routes.draw do
  resources :products
  resources :order_items
  resource :cards, only: [:show]
  resources :stores, only: [:index, :show]
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
