Rails.application.routes.draw do
 

<<<<<<< HEAD
  resources :offers
=======
  resources :user2s
>>>>>>> 3b82fcbad7e3944b26ff4aa7e952f83eb0363d5c
  resources :product_features
  resources :products
  resources :pfeatures
  resources :country_of_origins
  mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'
  resources :roles
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root "home#index"


  get 'home/index'

  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
