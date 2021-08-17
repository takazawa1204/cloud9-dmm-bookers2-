Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  get 'books/:id' => 'books#show', as: 'book'



  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :edit, :update]



end
