Rails.application.routes.draw do
 

#
  resources :pets do
    get :autocomplete_pfeature_name, :on => :collection
  end
  # root "pets#index"

  resources :user2s
  resources :offers
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
