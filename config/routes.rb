Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :index, :show, :destroy]
  resources :users, only: [:show]
  
end
