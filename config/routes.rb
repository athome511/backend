Rails.application.routes.draw do
  resources :advertisements
  resources :proposals
  resources :users_proposals
  resources :requests
  resources :users_requests
  resources :cloths
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
