Rails.application.routes.draw do
  resources :apikeys
  resources :roles
  resources :permissions
  resources :authcredentials
  resources :authmethods
  resources :invoices
  resources :subscriptions
  resources :payments
  resources :creditcards
  resources :cloudcredentials
  resources :clouds
  resources :products
  resources :users
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
