Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :images, only: [:index, :new, :edit, :show, :destroy]
  resources :users, only: [:new, :edit, :show, :destroy]
  resources :comments, only: [:new, :edit, :destroy]
  resources :hashtags, only: [:new, :show]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  root 'home#index'
end
