Rails.application.routes.draw do
  resources :closets
  resources :choose_bc
  resources :ranking
  resources :advertisements
  resources :user_proposals
  resources :proposals
  resources :user_requests
  resources :future_requests
  resources :past_requests
  resources :requests
  resources :cloths
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'icon/:index', to: 'icon#by_index'
  get 'cloth/:index', to: 'cloth#by_index'
  get 'ad/:index', to: 'ad#by_index'
  get 'login/:index', to: 'login#by_index', constraints: { index: /[^\/]+/ }
  get 'is_used_mail/:index', to: 'is_used_mail#by_index', constraints: { index: /[^\/]+/ }
end
