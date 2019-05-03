Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # this creates a route between def show in user controller to show.html.erb 
  # displayed as url: user/id as user_path
  resources :users, only: [:show, :edit, :update]
  root to: 'home#index'
end