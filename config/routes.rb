Rails.application.routes.draw do
  resources :searches
  resources :users
  resources :numbers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
