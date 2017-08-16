Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resource :store
  get 'store/index'
  get 'product/create'
  #root to: 'store#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
