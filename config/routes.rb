Rails.application.routes.draw do
  resources :statuses
  resources :comments
  resources :emails
  resources :phones
  resources :addresses
  resources :classmates
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "classmates#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
