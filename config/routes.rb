Rails.application.routes.draw do
  resources :bookings
  devise_for :users
  resources :properties
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'properties#index'
end
