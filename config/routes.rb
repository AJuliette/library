Rails.application.routes.draw do
  root 'home#index'
  resources :tags
  resources :links
end
