Rails.application.routes.draw do
  root 'orders#home'

  get 'orders/index'
  
  get 'orders/new'
  
  get 'orders/show'
  
  get 'orders/complete'
  
  resources :orders
end
