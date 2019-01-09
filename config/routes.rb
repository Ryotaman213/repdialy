Rails.application.routes.draw do
  root 'diaries#index'
  resources :diaries, only: [:index, :new, :create]
  resources :users, only: [:show]
  resources :pets, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
