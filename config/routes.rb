Rails.application.routes.draw do

  resources :products do
      resources :reviews, only: [:show, :create, :destroy]
  end

resources :sessions, only: [:new, :create, :destroy]

resources :users, only: [:new, :create]

resources :products


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
