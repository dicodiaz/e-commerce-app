Rails.application.routes.draw do
  resources :cosmetics
  resources :discounts
  root 'cosmetics#index'
end
