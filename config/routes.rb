Rails.application.routes.draw do
  resources :categories, only: %i[index]
  resources :cosmetics
  resources :discounts
  root 'cosmetics#index'
end
